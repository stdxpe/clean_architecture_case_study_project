import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/usecases/profile_usecases.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_event.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_state.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_status.dart';

/// 📌 İnceleyen geliştirici için not:

/// Bu Bloc, tek [ProfileBloc] ile çözüm yöntemine alternatif olarak yazıldı.
/// Buradaki event'ler ve state'ler [ProfileBloc] içinde de yazılabilirdi.
/// Ama hem ’Single Responsibility’ prensibine tam uyum, hem [ProfileBloc]'ta sadeleştirme,
/// hem de inceleyen geliştiricinin daha rahat takip edebilmesi için ayrı bir Bloc oluşturuldu.

/// Çünkü [ProfileBloc] ve ona ait dosyalar çok büyüyor ve karmaşıklaşıyordu:
///        -Status içinde ekstra SelectingPhoto, UploadingPhoto, SelectSuccess ve UploadSuccess union'ları;
///        -State içinde ekstra ’MediaSource mediaSource’ ve ’File? selectedPhoto’ parametreleri;
///        -Event içinde ’SelectProfilePhoto’ ve ’UploadProfilePhoto’ event'leri
/// ile [ProfileBloc] içinde boilerplate yaratmak yerine, bütün bunlar ayrı bir Bloc'a taşındı.

/// NOT: Aynı feature/ içinde olsalar bile, farklı Bloc'ların birbirine bağımlı olmaması adına;
///      Bu Bloc'taki kullanıcı fotoğrafı ekleme/güncelleme işlemi başarılı olursa,
///      [ProfileBloc]'un da state'ini güncellemesi için, [GlobalEventDispatcher] ile ’ProfilePhotoUpdated’ eventi yayılır.

///      1. Eğer ’Single source of truth’ olarak API seçildiyse: [ProfileBloc]'ta ’/user/get_profile’a GET isteği,
///      2. Ama eğer 2 API çağrısı yapmaktan kaçınmak isteniyorsa: buradaki ’/user/upload_photo’ POST isteğinden dönen
///         ’photoUrl’ bilgisi, [GlobalEventDispatcher] ile ’ProfilePhotoUpdated’ eventi içinde [ProfileBloc]'a gönderilebilir.

class ProfilePhotoUpdateBloc
    extends Bloc<ProfilePhotoUpdateEvent, ProfilePhotoUpdateState> {
  final ProfileUseCases _useCases;
  final GlobalEventDispatcher _eventDispatcher;
  StreamSubscription<SystemEvent>? _subscription;

  ProfilePhotoUpdateBloc(this._useCases, this._eventDispatcher)
    : super(ProfilePhotoUpdateState.initial()) {
    on<ProfilePhotoSelectEvent>(_onProfilePhotoSelectEvent);
    on<ProfilePhotoUploadEvent>(_onProfilePhotoUploadEvent);
  }

  Future<void> _onProfilePhotoSelectEvent(
    ProfilePhotoSelectEvent event,
    Emitter<ProfilePhotoUpdateState> emit,
  ) async {
    emit(state.copyWith(status: const PPUpdateStatus.selectingPhoto()));
    await Future<void>.delayed(500.ms); // Shows loading indicator min 500.ms

    final result = await _useCases.selectUserPhoto(state.mediaSource);

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: PPUpdateStatus.failure(failure.message),
          uiSideEffect: UISideEffect.notifyError(failure.message),
        ),
      ),
      (file) => emit(
        state.copyWith(
          status: const PPUpdateStatus.selectSuccess(),
          mediaSource: state.mediaSource,
          selectedPhoto: file,
        ),
      ),
    );
  }

  Future<void> _onProfilePhotoUploadEvent(
    ProfilePhotoUploadEvent event,
    Emitter<ProfilePhotoUpdateState> emit,
  ) async {
    if (state.selectedPhoto == null) {
      final message = Messages.storage.noPhotoSelected;
      emit(
        state.copyWith(
          status: PPUpdateStatus.failure(message),
          uiSideEffect: UISideEffect.notifyError(message),
        ),
      );
      return;
    }

    emit(state.copyWith(status: const PPUpdateStatus.uploadingPhoto()));
    await Future<void>.delayed(500.ms); // Shows loading indicator min 500.ms

    final result = await _useCases.uploadUserPhoto(state.selectedPhoto!.path);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: PPUpdateStatus.failure(failure.message),
            uiSideEffect: UISideEffect.notifyError(failure.message),
          ),
        );
        logger.e(Messages.profile.photoUploadFailed(failure.message));
      },
      (user) {
        emit(
          state.copyWith(
            status: const PPUpdateStatus.uploadSuccess(),
            uiSideEffect: const UISideEffect.navigate(Routes.profile),
          ),
        );
        logger.i(Messages.profile.photoUploadSuccess(user.id));

        /// Broadcasts a global event to notify [ProfileBloc] via [GlobalEventDispatcher]
        _eventDispatcher.publish(
          SystemEvent.profilePhotoChanged(photoUrl: user.photoUrl!),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    logger.d(Messages.core.disposed(getClassName));
    return super.close();
  }
}
