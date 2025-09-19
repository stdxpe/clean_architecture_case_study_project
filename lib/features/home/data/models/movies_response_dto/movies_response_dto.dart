import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/models/response_info_dto/response_info_dto.dart';
import 'package:case_study_clean_architecture_project/core/entities/paginated_movies/paginated_movies.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/movie_model/movie_model.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/pagination_dto/pagination_dto.dart';

part 'movies_response_dto.freezed.dart';
part 'movies_response_dto.g.dart';

/// Immutable Feature-Level DTO to represent movies list response from the API.
/// Wraps [MovieModel] list, [ResponseInfoDto] and [PaginationDto] metadata.

@freezed
abstract class MoviesResponseDto with _$MoviesResponseDto {
  const MoviesResponseDto._();

  ///   MoviesResponseDto                      →     {JSON}
  ///   ├── response : ResponseInfoDto         →     "response": { ...ResponseInfoDto... }
  ///   └── data                               →     "data": {
  ///       ├── movies : List<MovieModel>      →        "movies": [ ...MovieModel list... ],
  ///       └── pagination : PaginationDto     →        "pagination": { ...PaginationDto... }

  const factory MoviesResponseDto({
    @JsonKey(name: 'response') required ResponseInfoDto info,
    required List<MovieModel> movies,
    required PaginationDto pagination,
  }) = _MoviesResponseDto;

  factory MoviesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseDtoFromJson({
        'response': json['response'],
        'movies': ((json['data'] as Map<String, dynamic>)['movies'] as List),
        'pagination': (json['data'] as Map<String, dynamic>)['pagination'],
      });

  PaginatedMovies toEntity() => PaginatedMovies(
    movies: movies.map((movieDto) => movieDto.toEntity()).toList(),
    pagination: pagination.toEntity(),
  );
}
