import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/entities/paginated_movies/paginated_movies.dart';

/// Abstract interface for [MoviesRepository]

abstract class MoviesRepository {
  Future<Either<Failure, PaginatedMovies>> getPaginatedMovies({
    required int page,
  });

  Future<Either<Failure, Movie>> toggleFavoriteMovie({
    required String movieId,
  });
}
