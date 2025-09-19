import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

part 'preferences.freezed.dart';

/// Immutable and type-safe Core-level Domain Entity for [Preferences].
/// Represents app-wide user preference states and application settings.

@freezed
sealed class Preferences with _$Preferences {
  const factory Preferences({
    required AppLocale locale,
    required ThemeMode themeMode,
    required bool notificationsEnabled,
    required bool rememberMe,
  }) = _Preferences;

  factory Preferences.initial() => const Preferences(
    locale: AppLocale.en,
    themeMode: ThemeMode.dark,
    notificationsEnabled: true,
    rememberMe: true,
  );
}
