import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/errors/exception_mapper.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/auth/domain/repositories/auth_repository.dart';
import 'package:case_study_clean_architecture_project/core/services/secure_storage/secure_storage_service.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/models/auth_response_dto/auth_response_dto.dart';

/// Concrete implementation of [AuthRepository] (for token CRUD operations and I/O services access).

/// Converts Data-level models/DTOs to Domain-level entities with `.toEntity()` method.
/// Catches raw [Exception]'s from [AuthRemoteDataSource] and converts/maps them into..
/// Domain-level [Failure] objects, by using [ExceptionMapper.mapToFailure] or just ’toFailure()’.
/// Returns results as [Either]<[Failure], [Entity]> for functional error handling.  // returns Left(failure) or Right(entity)

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final SecureStorageService _tokenStorage;

  AuthRepositoryImpl(this._remoteDataSource, this._tokenStorage);

  @override
  Future<Either<Failure, User>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      logger.i(Messages.auth.signInStarted(email));

      final authResponseDto = await _remoteDataSource.signIn(
        email: email,
        password: password,
      );

      return _validateResponse(authResponseDto);
    } catch (e) {
      logger.e(Messages.auth.failed, e: e);
      return left(e.toFailure());
    }
  }

  @override
  Future<Either<Failure, User>> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      logger.i(Messages.auth.signInStarted(email));

      final authResponseDto = await _remoteDataSource.signUp(
        name: name,
        email: email,
        password: password,
      );

      return _validateResponse(authResponseDto);
    } catch (e) {
      logger.e(Messages.auth.failed, e: e);
      return left(e.toFailure());
    }
  }

  /// Helper method to validate DTO and set access token
  Future<Either<Failure, User>> _validateResponse(AuthResponseDto dto) async {
    try {
      final userModel = dto.userModel;
      final token = userModel.token;

      if (token == null || token.isEmpty) {
        logger.w(Messages.storage.tokenMissing);
        return left(Failure.storage(Messages.storage.tokenMissing));
      }

      await _tokenStorage.setAccessToken(token);
      logger.i(Messages.storage.tokenSaved);

      final user = userModel.toEntity();
      return right(user);
    } catch (e) {
      return left(e.toFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _tokenStorage.deleteAccessToken();
      logger.i(Messages.auth.signedOut);
      return right(unit);
    } catch (e) {
      logger.e(Messages.storage.failure(e.toString()));
      return left(Failure.storage(Messages.auth.signOutFailed));
    }
  }

  @override
  Future<Either<Failure, bool>> isAuthenticated() async {
    try {
      final token = await _tokenStorage.getAccessToken();
      final result = token.isSome();
      return right(result);
    } catch (e) {
      logger.e(Messages.storage.tokenMissing);
      return left(Failure.storage(e.toString()));
    }
  }
}
