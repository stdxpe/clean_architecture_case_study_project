import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/entities/pagination/pagination.dart';

part 'paginated_movies.freezed.dart';

/// Immutable and type-safe Core-level Domain Entity for [PaginatedMovies].
/// API-specific transformations and parsing handled at feature-level DTOs.

@freezed
sealed class PaginatedMovies with _$PaginatedMovies {
  const factory PaginatedMovies({
    required List<Movie> movies,
    required Pagination pagination,
  }) = _PaginatedMovies;

  factory PaginatedMovies.initial() => PaginatedMovies(
    movies: [],
    pagination: Pagination.initial(),
  );
}
