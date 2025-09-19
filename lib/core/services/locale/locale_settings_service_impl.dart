import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/services/storage/local_storage_service.dart';
import 'package:case_study_clean_architecture_project/core/services/navigation/navigation_service.dart';
import 'package:case_study_clean_architecture_project/core/services/locale/locale_settings_service.dart';

/// Concrete implementation of [LocaleSettingsService].
/// Provides CRUD operations for local user preferences (theme/locale/notifications/rememberMe)

class LocaleSettingsServiceImpl implements LocaleSettingsService {
  final LocalStorageService _localStorage;

  LocaleSettingsServiceImpl(this._localStorage);

  final String _localeKey = AppConstants.paths.localeKey;
  final String _notificationsKey = AppConstants.paths.notificationsKey;
  final String _rememberMeKey = AppConstants.paths.rememberMeKey;
  final String _themeModeKey = AppConstants.paths.themeModeKey;

  @override
  Future<bool?> getRememberMe() async {
    return _perform<bool?>(
      execute: () => _localStorage.read<bool>(key: _rememberMeKey),
    );
  }

  @override
  Future<void> setRememberMe({required bool remember}) async {
    await _perform<void>(
      execute: () => _localStorage.write(key: _rememberMeKey, value: remember),
    );
  }

  @override
  Future<bool?> getNotifications() async {
    return _perform<bool?>(
      execute: () => _localStorage.read<bool>(key: _notificationsKey),
    );
  }

  @override
  Future<void> setNotifications({required bool enabled}) async {
    await _perform<void>(
      execute: () =>
          _localStorage.write(key: _notificationsKey, value: enabled),
    );
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    final index =
        await _perform<int?>(
          execute: () => _localStorage.read<int>(key: _themeModeKey),
        ) ??
        ThemeMode.system.index;
    return ThemeMode.values[index];
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    await _perform<void>(
      execute: () => _localStorage.write(key: _themeModeKey, value: mode.index),
    );
  }

  @override
  Future<AppLocale?> getLocale() async {
    final code = await _perform(
      execute: () => _localStorage.read<String>(key: _localeKey),
    );
    final result = code?.toAppLocale;
    await applyLocale(result ?? AppLocale.en);
    return result;
  }

  @override
  Future<void> applyLocale(AppLocale locale) async {
    final ctx = navigatorKey.currentContext;
    if (ctx != null && ctx.locale != locale.toLocale) {
      await ctx.setLocale(locale.toLocale);
    }
  }

  @override
  Future<void> setLocale(AppLocale locale) async {
    await _perform<void>(
      execute: () => _localStorage.write(key: _localeKey, value: locale.name),
    );
    await applyLocale(locale);
  }

  Future<T?> _perform<T>({
    required Future<T> Function() execute,
  }) async {
    try {
      return await execute();
    } catch (e) {
      logger.e(Messages.storage.keyReadFailed, e: e);
      throw StorageException(Messages.storage.keyReadFailed);
    }
  }
}
