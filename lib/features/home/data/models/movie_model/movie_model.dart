import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

/// Immutable Feature-Level DTO for [Movie].
/// Ensures type-safe transformation to [Movie] entity via ’toEntity()’ method.

@freezed
abstract class MovieModel with _$MovieModel {
  const MovieModel._();

  const factory MovieModel({
    required String id,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Plot') required String description,
    @JsonKey(name: 'Poster') required String posterUrl,
    @JsonKey(name: 'Director') required String director,
    @JsonKey(name: 'Images') @Default([]) List<String> images,
    @JsonKey(name: '_id') String? legacyId,
    @JsonKey(name: 'Actors') String? actors,
    @JsonKey(name: 'Awards') String? awards,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Genre') String? genre,
    @JsonKey(name: 'Writer') String? writer,
    @JsonKey(name: 'Language') String? language,
    @JsonKey(name: 'Metascore') dynamic metascore,
    @JsonKey(name: 'Rated') String? rated,
    @JsonKey(name: 'Released') String? released,
    @JsonKey(name: 'Runtime') String? runtime,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'imdbID') String? imdbId,
    @JsonKey(name: 'imdbRating') dynamic imdbRating,
    @JsonKey(name: 'imdbVotes') dynamic imdbVotes,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'ComingSoon') @Default(false) bool comingSoon,
    @Default(false) bool isFavorite,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Movie toEntity() {
    return Movie(
      id: (id.isEmpty && legacyId != null) ? legacyId! : id,
      title: title,
      description: description,
      posterUrl: posterUrl,
      director: director,
      images: images,
      actors: actors,
      awards: awards,
      country: country,
      genre: genre,
      writer: writer,
      language: language,
      metascore: metascore?.toString(),
      rated: rated,
      released: released,
      runtime: runtime,
      year: year,
      imdbId: imdbId,
      imdbRating: imdbRating?.toString(),
      imdbVotes: imdbVotes?.toString(),
      type: type,
      comingSoon: comingSoon,
      isFavorite: isFavorite,
    );
  }
}
