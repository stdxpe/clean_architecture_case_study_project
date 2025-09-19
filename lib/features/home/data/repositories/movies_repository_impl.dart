import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/errors/exception_mapper.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/entities/paginated_movies/paginated_movies.dart';
import 'package:case_study_clean_architecture_project/features/home/domain/repositories/movies_repository.dart';
import 'package:case_study_clean_architecture_project/features/home/data/datasources/movies_remote_data_source.dart';

/// Concrete implementation of [MoviesRepository].

/// Converts Data-level models/DTOs to Domain-level entities with `.toEntity()` method.
/// Catches raw [Exception]'s from [MoviesRemoteDataSource] and converts/maps them into..
/// Domain-level [Failure] objects, by using [ExceptionMapper.mapToFailure] or just ’toFailure(..)’.
/// Returns results as [Either]<[Failure], [Entity]> for functional error handling.  // returns Left(failure) or Right(entity)

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl(this._remoteDataSource);

  final MoviesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, PaginatedMovies>> getPaginatedMovies({
    required int page,
  }) async {
    try {
      final dto = await _remoteDataSource.getPaginatedMovies(page: page);
      final paginatedMovies = dto.toEntity();

      logger.i(Messages.home.paginationSuccess(page: page));

      return right(paginatedMovies);
    } catch (e) {
      logger.e(Messages.home.paginationFailed(e.toString()));
      return left(e.toFailure());
    }
  }

  @override
  Future<Either<Failure, Movie>> toggleFavoriteMovie({
    required String movieId,
  }) async {
    try {
      final dto = await _remoteDataSource.toggleFavoriteMovie(movieId: movieId);
      final toggledMovie = dto.toEntity();

      logger.i(Messages.home.favoriteToggled(movieId));

      return right(toggledMovie);
    } catch (e) {
      logger.e(Messages.home.toggleFailed(movieId, e.toString()));
      return left(e.toFailure());
    }
  }
}
