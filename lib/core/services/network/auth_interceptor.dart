import 'package:dio/dio.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/services/secure_storage/secure_storage_service.dart';

/// Intercepts HTTP requests and injects the AccessToken

class AuthInterceptor extends Interceptor {
  final SecureStorageService _tokenStorage;

  AuthInterceptor(this._tokenStorage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final accessToken = await _tokenStorage.getAccessToken();

      accessToken.fold(() => null, (token) {
        if (token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
          options.headers['Content-Type'] = 'application/json';
        }
      });
    } catch (e) {
      logger.e(Messages.network.tokenInjectionFailed, e: e);
    }

    super.onRequest(options, handler);
  }
}
