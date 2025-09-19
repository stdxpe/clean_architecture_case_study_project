import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/errors/exception_mapper.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/repositories/profile_repository.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/datasources/profile_remote_data_source.dart';

/// Concrete implementation of [ProfileRepository].

/// Converts Data-level models/DTOs to Domain-level entities with `.toEntity()` method.
/// Catches raw [Exception]'s from [ProfileRemoteDataSource] and converts/maps them into..
/// Domain-level [Failure] objects, by using [ExceptionMapper.mapToFailure] or just ’toFailure(..)’.
/// Returns results as [Either]<[Failure], [Entity]> for functional error handling.  // returns Left(failure) or Right(entity)

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._remoteDataSource);

  final ProfileRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, User>> getUserProfile() async {
    try {
      final profileResponseDto = await _remoteDataSource.getUserProfile();
      final user = profileResponseDto.toEntity();

      logger.i(Messages.profile.fetched);

      return right(user);
    } catch (e) {
      logger.e(Messages.profile.fetchFailed(e.toString()));
      return left(e.toFailure());
    }
  }

  @override
  Future<Either<Failure, User>> uploadUserPhoto({
    required String filePath,
  }) async {
    try {
      final dto = await _remoteDataSource.uploadUserPhoto(filePath: filePath);
      final user = dto.toEntity();

      final userId = dto.profile.id;
      logger.i(Messages.profile.photoUploadSuccess(userId));

      return right(user);
    } catch (e) {
      logger.e(Messages.profile.photoUploadFailed(e.toString()));
      return left(e.toFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavoriteMovies() async {
    try {
      final favoritesResponseDto = await _remoteDataSource.getFavoriteMovies();

      final movies = favoritesResponseDto.movies
          .map((movieDto) => movieDto.toEntity())
          .toList();

      logger.i(Messages.profile.favoritesSuccess);

      return right(movies);
    } catch (e) {
      logger.e(Messages.profile.favoritesFetchFailed(e.toString()));
      return left(e.toFailure());
    }
  }
}
