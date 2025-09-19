import 'package:fpdart/fpdart.dart';

abstract class SecureStorageService {
  Future<Option<String>> getAccessToken();
  Future<void> setAccessToken(String token);
  Future<void> deleteAccessToken();
  Future<void> clearAll();

  /// 📌 Refresh Token Case for future
  /// Future<Option<String>> getRefreshToken();
  /// Future<void> setRefreshToken(String token);
  /// Future<void> deleteRefreshToken();
}
