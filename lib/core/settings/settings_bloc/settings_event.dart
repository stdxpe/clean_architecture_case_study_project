import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/preferences/preferences.dart';

part 'settings_event.freezed.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.networkStatusChanged({
    required bool isConnected,
  }) = NetworkStatusChanged;

  const factory SettingsEvent.authStatusRequested({
    required bool isAuthenticated,
  }) = SettingsAuthStatusRequested;

  const factory SettingsEvent.authStatusChanged({
    required bool isAuthenticated,
  }) = SettingsAuthStatusChanged;

  const factory SettingsEvent.initialPreferencesRequested() =
      SettingsInitialPreferencesRequested;

  const factory SettingsEvent.preferencesChanged({
    required Preferences preferences,
  }) = SettingsPreferencesChanged;
}
