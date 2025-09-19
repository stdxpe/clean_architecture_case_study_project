import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/usecases/profile_usecases.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_event.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_state.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_status.dart';

/// 📌 İnceleyen geliştirici için not:

/// Bu Bloc, tek [ProfileBloc] ile çözüm yöntemine alternatif olarak yazıldı.
/// Buradaki event ve state'ler [ProfileBloc] içinde de yazılabilirdi.
/// Ama hem ’Single Responsibility’ prensibine tam uyum, hem [ProfileBloc]'ta sadeleştirme,
/// hem de inceleyen geliştiricinin daha rahat takip edebilmesi için ayrı bir Bloc oluşturuldu.

/// Standart işlemler: [HomeBloc]'ta ’toggleFavorite’ eventi ➔ (Domain) useCase ➔ repo toggleFavorite()..
/// ➔ (Data) remoteDataSource ’/movie/favorite/$movieId’ POST isteği... ➔ (Data) Model/DTO ➔ (Domain) Entity dönüşümleri...

/// NOT:  Bu noktada birkaç farklı seçenek mevcut, ve firma tercihlerine veya API yapısına göre değişebilir.
///       Buradaki problem: farklı sayfalarda, farklı feature'larda ve farklı Bloc'lar ile çalışılıyor.
///       Bu yapı en baştan daha farklı şekillerde tasarlanabilir, ya da repo içinde Stream ve dinleme mekanizmaları yaratılabilir.
///       Ama bu projenin mimarisi gereği; farklı feature/ içindeki Bloc'ların birbirine direkt bağımlı olmaması adına;
///       Eğer [HomeBloc]'taki ’toggleFavorite’ işlemi başarılı olursa, [FavoriteMoviesBloc]'un da state'ini güncellemesi için,
///       [GlobalEventDispatcher] ile ’MovieFavoriteStatusChanged’ eventi yayılır.

///       1. ’Single source of truth’ olarak API seçildiyse: her favori değişiminde tekrar API'a çıkılır. ’/movie/favorites’a GET isteği.
///       2. Hem 2 API çağrısı yapmaktan kaçınmak isteniyorsa,
///          hem de her bir ’toggleFavorite’ işleminde, bütün favori fimler listesi tekrar getirilmek istenmiyorsa,
///          ilgili filmin ’movieID’ bilgisi, [GlobalEventDispatcher] ile ’MovieFavoriteStatusChanged’ eventi içinde gönderilebilir.
///          API'dan belirli bir ’movieID’ ile film getirme seçeneği varsa, local favoritesMovies state rahatlıkla güncellenebilir.
///       3. AMA, API'da GET ’movie/$movieId’ gibi, yalnızca tek bir filmi getirme seçeneği/endpoint'i mevcut değil.
///          Ayrıca ’toggleFavorite()’ ve ’/movie/favorite/$movieId’ye POST isteği, finalde zaten güncel bir [Movie] entity return ediyor.
///          Favorilere eklenen [Movie]; [GlobalEventDispatcher]'ın ’MovieFavoriteStatusChanged’ eventi içinde, [FavoriteMoviesBloc]'a gönderilebilir. ??

///          [GlobalEventDispatcher] event'leri ile entity taşımak da mümkün, ama katı Clean Architecture için önerilen yol değil.
///          Clean Architecture ihlali olmaması için, [GlobalEventDispatcher] yalnızca ’notify’ amaçlı basit sinyaller ve event'ler göndermeli,
///          ve bu event'ler içinde yalnızca primitive tipler taşıyabilir.
///          Yani farklı feature’lar arasında direkt ’data sharing pipeline’ gibi kullanılmamalı.

/// 📌 ÖZET: Clean Architecture ihlali olmaması adına; ve API'da GET ’movie/$movieId’ endpoint'i mevcut olmadığı için:
///
/// 1. [HomeBloc] ’onToggleFavorite’ içinde, [GlobalEventDispatcher]'a ’MovieFavoriteStatusChanged’ adlı event gönderir.
/// 3. [GlobalEventDispatcher] bildirimi alır, global event yayar.
/// 4. Dinleyen [FavoriteMoviesBloc] ’onGetFavorites’ ile API'a çıkar.
/// 2  Global event içinde ’movieID’ taşınır. (Şu an için bir önemi yok, ama gelecekte gerekebilir)

class FavoriteMoviesBloc
    extends Bloc<FavoriteMoviesEvent, FavoriteMoviesState> {
  final ProfileUseCases _useCases;
  final GlobalEventDispatcher _eventDispatcher;
  StreamSubscription<SystemEvent>? _subscription;

  FavoriteMoviesBloc(this._useCases, this._eventDispatcher)
    : super(FavoriteMoviesState.initial()) {
    on<GetFavoritesEvent>(_onGetFavoritesEvent);

    _listenSystemEvents();
    add(const FavoriteMoviesEvent.getFavorites());
  }

  Future<void> _onGetFavoritesEvent(
    GetFavoritesEvent event,
    Emitter<FavoriteMoviesState> emit,
  ) async {
    emit(state.copyWith(status: const FavoriteMoviesStatus.loading()));

    final result = await _useCases.getFavoriteMovies();

    result.fold(
      (failure) {
        emit(
          state.copyWith(status: FavoriteMoviesStatus.failure(failure.message)),
        );
        logger.e(Messages.profile.favoritesFetchFailed(failure.message));
      },
      (movies) {
        emit(
          state.copyWith(
            status: const FavoriteMoviesStatus.success(),
            favoriteMovies: movies,
          ),
        );
        logger.i(Messages.profile.favoritesSuccess);
      },
    );
  }

  /// Helper method to subscribe global system events
  void _listenSystemEvents() {
    _subscription = _eventDispatcher.stream.listen((event) {
      switch (event) {
        case SystemMovieFavoriteStatusChanged():
          // Access movieID (’event.movieId’) if necessary in future:
          add(const FavoriteMoviesEvent.getFavorites());

        default:
      }
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    logger.d(Messages.core.disposed(getClassName));
    return super.close();
  }
}
