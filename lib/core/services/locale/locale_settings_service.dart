import 'package:flutter/material.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Abstract interface for [LocaleSettingsService]

abstract class LocaleSettingsService {
  Future<ThemeMode> getThemeMode();
  Future<void> setThemeMode(ThemeMode mode);

  Future<AppLocale?> getLocale();
  Future<void> setLocale(AppLocale locale);
  Future<void> applyLocale(AppLocale locale);

  Future<bool?> getNotifications();
  Future<void> setNotifications({required bool enabled});

  Future<bool?> getRememberMe();
  Future<void> setRememberMe({required bool remember});
}
