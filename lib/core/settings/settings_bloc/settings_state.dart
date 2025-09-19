import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/preferences/preferences.dart';

part 'settings_state.freezed.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isUserAuthenticated,
    required bool isConnected,
    Preferences? preferences,
  }) = _SettingsState;

  factory SettingsState.initial() =>
      const SettingsState(isUserAuthenticated: false, isConnected: true);
}
