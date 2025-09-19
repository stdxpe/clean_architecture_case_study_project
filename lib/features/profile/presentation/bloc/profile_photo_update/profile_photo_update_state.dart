import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_status.dart';

part 'profile_photo_update_state.freezed.dart';

@freezed
sealed class ProfilePhotoUpdateState with _$ProfilePhotoUpdateState {
  const factory ProfilePhotoUpdateState({
    required PPUpdateStatus status,
    required MediaSource mediaSource,
    required File? selectedPhoto,
    UISideEffect? uiSideEffect,
  }) = _ProfilePhotoUpdateState;

  factory ProfilePhotoUpdateState.initial() => const ProfilePhotoUpdateState(
    status: PPUpdateStatus.initial(),
    mediaSource: MediaSource.gallery,
    selectedPhoto: null,
  );
}
