import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_event.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_state.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_status.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/home/domain/usecases/home_usecases.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCases _useCases;
  final GlobalEventDispatcher _eventDispatcher;
  StreamSubscription<SystemEvent>? _subscription;

  HomeBloc(this._useCases, this._eventDispatcher) : super(HomeState.initial()) {
    /// Simultaneous events are ignored by ’bloc_concurrency’
    on<LoadInitialMovies>(_onLoadInitialMovies);
    on<LoadMoreMovies>(_onLoadMoreMovies, transformer: droppable());
    on<ToggleFavorite>(_onToggleFavoriteMovie, transformer: droppable());
    on<ChangePageViewIndex>(_onChangePageViewIndex);
    on<ScrollToTop>(_onScrollToTop);

    add(const HomeEvent.loadInitialMovies());
  }

  Future<void> _onLoadInitialMovies(_, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: const HomeStatus.loading()));

    final result = await _useCases.getPaginatedMovies(page: 1);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: HomeStatus.failure(message: failure.message),
            uiSideEffect: UISideEffect.notifyError(failure.message),
          ),
        );
        logger.e(Messages.home.paginationFailed(failure.message));
      },

      (paginatedMovies) {
        emit(
          state.copyWith(
            status: const HomeStatus.success(),
            paginatedMovies: paginatedMovies,
            uiSideEffect: null, // Optional: UISideEffect.notifySuccess(..)
          ),
        );
        logger.i(Messages.home.paginationSuccess(page: 1));
      },
    );
  }

  Future<void> _onLoadMoreMovies(_, Emitter<HomeState> emit) async {
    if (state.pagination.currentPage >= state.pagination.maxPage) return;
    // Optional: UISideEffect.notifyError(AppStrings.noMorePageToLoad);

    emit(state.copyWith(status: const HomeStatus.loadingMore()));
    await Future<void>.delayed(500.ms); // Shows LoadingMoreIndicator min 500.ms

    final nextPageToLoad = state.pagination.currentPage + 1;

    final result = await _useCases.getPaginatedMovies(page: nextPageToLoad);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: HomeStatus.failure(message: failure.message),
            uiSideEffect: UISideEffect.notifyError(failure.message),
          ),
        );
        logger.e(Messages.home.paginationFailed(failure.message));
      },

      (response) {
        final updatedMovies = [...state.movies, ...response.movies];

        emit(
          state.copyWith(
            status: const HomeStatus.success(),
            paginatedMovies: response.copyWith(movies: updatedMovies),
            uiSideEffect: const UISideEffect.animateToNextPage(),
          ),
        );
        logger.i(Messages.home.paginationSuccess(page: nextPageToLoad));
      },
    );
  }

  Future<void> _onToggleFavoriteMovie(
    ToggleFavorite event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        uiSideEffect: UISideEffect.showFavoriteAnimation(
          state.currentMovie.isFavorite,
        ),
      ),
    );

    final result = await _useCases.toggleFavorite(movieId: event.movieId);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: HomeStatus.failure(message: failure.message),
            uiSideEffect: UISideEffect.notifyError(failure.message),
          ),
        );
        logger.e(Messages.home.toggleFailed(event.movieId, failure.message));
      },

      (toggledMovie) {
        final newMovies = state.movies
            .map((item) => (item.id == toggledMovie.id) ? toggledMovie : item)
            .toList(); // Replaces state with the toggled movie

        emit(
          state.copyWith(
            status: const HomeStatus.success(),
            paginatedMovies: state.paginatedMovies.copyWith(movies: newMovies),
            uiSideEffect: null,
          ),
        );
        logger.i(Messages.home.favoriteToggled(event.movieId));

        // Broadcasts a global event to notify [FavoriteMoviesBloc]
        _eventDispatcher.publish(
          SystemEvent.movieFavoriteStatusChanged(movieId: toggledMovie.id),
        );
      },
    );
  }

  void _onChangePageViewIndex(
    ChangePageViewIndex event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(currentPageViewIndex: event.index, uiSideEffect: null));
  }

  void _onScrollToTop(_, Emitter<HomeState> emit) {
    /// Implemented inside Bloc, for ’Refresh’ functionality in future
    emit(state.copyWith(uiSideEffect: const UISideEffect.animateToTop()));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    logger.d(Messages.core.disposed(getClassName));
    return super.close();
  }
}
