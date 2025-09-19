import 'package:fpdart/fpdart.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/services/secure_storage/secure_storage_service.dart';

/// Concrete implementation of [SecureStorageService].
/// Manages access token lifecycle using [FlutterSecureStorage] package.
/// Uses try/catch blocks and throws raw [Exception], instead of [Failure] with [Either].

class SecureStorageServiceImpl implements SecureStorageService {
  SecureStorageServiceImpl(this._storage);

  final FlutterSecureStorage _storage;
  final String _accessTokenKey = AppConstants.paths.accessTokenKey;

  @override
  Future<void> setAccessToken(String token) async {
    try {
      await _storage.write(key: _accessTokenKey, value: token);
      logger.d(Messages.storage.tokenSaved);
    } catch (e, st) {
      logger.e(Messages.storage.saveFailed, e: e, st: st);
      throw StorageException(Messages.storage.saveFailed);
    }
  }

  @override
  /// [Option] is used instead of [Failure]
  /// Because missing token is an expected scenario, not a [Failure]
  Future<Option<String>> getAccessToken() async {
    try {
      final token = await _storage.read(key: _accessTokenKey);
      if (token == null) {
        logger.i(Messages.storage.tokenNotFound);
        return const None();
      }
      return Some(token);
    } catch (e) {
      logger.e(Messages.storage.readFailed, e: e);
      throw StorageException(Messages.storage.readFailed);
    }
  }

  @override
  Future<void> deleteAccessToken() async {
    try {
      await _storage.delete(key: _accessTokenKey);
      logger.d(Messages.storage.tokenDeleted);
    } catch (e, st) {
      logger.e(Messages.storage.deleteFailed, e: e, st: st);
      throw StorageException(Messages.storage.deleteFailed);
    }
  }

  @override
  Future<void> clearAll() async {
    try {
      await _storage.deleteAll();
      logger.d(Messages.storage.storageCleared);
    } catch (e, st) {
      logger.e(Messages.storage.clearFailed, e: e, st: st);
      throw StorageException(Messages.storage.clearFailed);
    }
  }
}
