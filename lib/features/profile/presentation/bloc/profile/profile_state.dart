import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/utilities/dummy_data.dart';
import 'package:case_study_clean_architecture_project/core/entities/preferences/preferences.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_status.dart';

part 'profile_state.freezed.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    required ProfileStatus status,
    required User profile,
    required Preferences preferences,
    UISideEffect? uiSideEffect,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
    status: const ProfileStatus.initial(),
    profile: profileInitial,
    preferences: Preferences.initial(),
  );
}
