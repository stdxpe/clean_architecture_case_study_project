import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_client.dart';
import 'package:case_study_clean_architecture_project/core/models/http_response/http_response.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/models/response_error_dto/response_error_dto.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/models/auth_response_dto/auth_response_dto.dart';

/// Concrete implementation of [AuthRemoteDataSource].
/// Performs API requests, and response serialization/parsing with logs.

/// Functional error handling (fpdart, [Either], fold) is intentionally avoided here.
/// Throws custom raw [Exception]'s, instead of Domain-level [Failure] objects.

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._client);

  final NetworkClient _client;

  @override
  Future<AuthResponseDto> signIn({
    required String email,
    required String password,
  }) async {
    const endpoint = ApiEndpoints.login;
    try {
      final parameters = {'email': email, 'password': password};

      final response = await _client.post(endpoint, data: parameters);
      logger.i(Messages.auth.signInSuccess(email));

      return _resolve(response);
    } on NetworkClientException catch (e) {
      logger.e(Messages.auth.signInFailed(email));
      if (e.info != null) {
        final error = ResponseErrorDto.fromJson(e.info!);
        throw APIResponseException(code: error.code, apiMessage: error.message);
      }
      rethrow;
    }
  }

  @override
  Future<AuthResponseDto> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    const endpoint = ApiEndpoints.register;
    try {
      final parameters = {'name': name, 'email': email, 'password': password};

      final response = await _client.post(endpoint, data: parameters);
      logger.i(Messages.auth.signUpSuccess(email));

      return _resolve(response);
    } on NetworkClientException catch (e) {
      logger.e(Messages.auth.signInFailed(email));
      if (e.info != null) {
        final error = ResponseErrorDto.fromJson(e.info!);
        throw APIResponseException(code: error.code, apiMessage: error.message);
      }
      rethrow;
    }
  }

  AuthResponseDto _resolve(HttpResponse response) {
    if (response.data is! Map<String, dynamic>) {
      logger.e(Messages.parsing.invalidFormat);
      throw ParsingException(Messages.parsing.invalidFormat);
    }

    final data = response.data as Map<String, dynamic>;
    final authResponseDto = AuthResponseDto.fromJson(data);

    authResponseDto.info.throwIfNotSuccess();

    return authResponseDto;
  }
}
