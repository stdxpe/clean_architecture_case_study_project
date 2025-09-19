import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/entities/paginated_movies/paginated_movies.dart';
import 'package:case_study_clean_architecture_project/features/home/domain/repositories/movies_repository.dart';

/// Created as a UX-Addition or a placeholder for future business logic.
/// Groups multiple use cases in a single class instead of separate files to simplify structure.
/// Result ’Folding’ of Either<Failure, T> is intentionally left to the Bloc to update the UI state.

class HomeUseCases {
  final MoviesRepository _repository;

  HomeUseCases(this._repository);

  Future<Either<Failure, PaginatedMovies>> getPaginatedMovies({
    required int page,
  }) {
    return _repository.getPaginatedMovies(page: page);
  }

  Future<Either<Failure, Movie>> toggleFavorite({
    required String movieId,
  }) {
    return _repository.toggleFavoriteMovie(movieId: movieId);
  }
}
