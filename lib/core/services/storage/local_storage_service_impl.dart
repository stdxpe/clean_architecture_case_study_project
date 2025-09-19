import 'package:hive_flutter/hive_flutter.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/services/storage/local_storage_service.dart';

/// Concrete implementation of [LocalStorageService] using [Hive].

class LocalStorageServiceImpl implements LocalStorageService {
  LocalStorageServiceImpl(this._settingsBox);

  final Box<dynamic> _settingsBox;

  static Future<LocalStorageServiceImpl> init() async {
    final box = await Hive.openBox<dynamic>(AppConstants.paths.hiveBox);
    return LocalStorageServiceImpl(box);
  }

  @override
  Future<T?> read<T>({required String key}) async {
    return _perform<T?>(
      execute: () async => _settingsBox.get(key) as T?,
      success: Messages.storage.keyRead,
      error: Messages.storage.keyReadFailed,
    );
  }

  @override
  Future<void> write<T>({required String key, required T value}) async {
    await _perform<void>(
      execute: () => _settingsBox.put(key, value),
      success: Messages.storage.keySaved,
      error: Messages.storage.keySaveFailed,
    );
  }

  @override
  Future<void> delete(String key) async {
    await _perform<void>(
      execute: () => _settingsBox.delete(key),
      success: Messages.storage.keyDeleted,
      error: Messages.storage.keyDeleteFailed,
    );
  }

  @override
  Future<void> clear() async {
    await _perform<void>(
      execute: () => _settingsBox.clear(),
      success: Messages.storage.cleared,
      error: Messages.storage.clearFailed,
    );
  }

  @override
  Future<bool> containsKey(String key) async {
    return await _perform<bool>(
          execute: () async => _settingsBox.containsKey(key),
          success: Messages.storage.keyExistsCheck,
          error: Messages.storage.keyExistsCheckFailed,
        ) ??
        false;
  }

  Future<T?> _perform<T>({
    required Future<T> Function() execute,
    required String success,
    required String error,
  }) async {
    try {
      return await execute();
    } catch (e) {
      logger.e(error, e: e);
      throw StorageException(error);
    }
  }
}
