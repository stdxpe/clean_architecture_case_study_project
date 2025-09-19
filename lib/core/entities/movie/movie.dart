import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/movie_model/movie_model.dart';

part 'movie.freezed.dart';

/// Immutable and type-safe Core-level Domain Entity for [Movie].
/// API-specific transformations and parsing handled at feature-level [MovieModel].

@freezed
sealed class Movie with _$Movie {
  const factory Movie({
    required String id,
    required String title,
    required String description,
    required String posterUrl,
    required String director,
    required bool isFavorite,
    required List<String> images,
    String? actors,
    String? awards,
    String? country,
    String? genre,
    String? writer,
    String? language,
    String? metascore,
    String? rated,
    String? released,
    String? runtime,
    String? year,
    String? imdbId,
    String? imdbRating,
    String? imdbVotes,
    String? type,
    bool? comingSoon,
  }) = _Movie;
}
