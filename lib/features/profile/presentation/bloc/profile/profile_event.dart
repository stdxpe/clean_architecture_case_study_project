import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

part 'profile_event.freezed.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserProfile() = GetUserProfile;
  const factory ProfileEvent.crashlyticsRequested() = CrashlyticsRequested;
  const factory ProfileEvent.signOutRequested() = ProfileSignOutRequested;
  const factory ProfileEvent.notificationRequested(bool value) =
      NotificationRequested;
  const factory ProfileEvent.initialPreferencesRequested() =
      InitialPreferencesRequested;
  const factory ProfileEvent.preferencesChanged({
    AppLocale? locale,
    ThemeMode? themeMode,
    bool? notifications,
    bool? rememberMe,
  }) = PreferencesChanged;
}
