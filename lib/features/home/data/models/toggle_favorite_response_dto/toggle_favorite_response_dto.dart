import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/models/response_info_dto/response_info_dto.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/movie_model/movie_model.dart';

part 'toggle_favorite_response_dto.freezed.dart';
part 'toggle_favorite_response_dto.g.dart';

/// Immutable Feature-Level DTO to represent toggled movie response from the API.
/// Wraps [MovieModel], [ResponseInfoDto] and ’action’ metadata.

@freezed
abstract class ToggleFavoriteResponseDto with _$ToggleFavoriteResponseDto {
  const ToggleFavoriteResponseDto._();

  ///   ToggleFavoriteResponseDto              →     {JSON}
  ///   ├── response : ResponseInfoDto         →     "response": { ...ResponseInfoDto... }
  ///   └── data                               →     "data": {
  ///       ├── movie  : MovieModel            →        "movie": { MovieModel },
  ///       └── action : String                →        "action": "String"

  const factory ToggleFavoriteResponseDto({
    @JsonKey(name: 'response') required ResponseInfoDto info,
    required MovieModel movie,
    required String action,
  }) = _ToggleFavoriteResponseDto;

  factory ToggleFavoriteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ToggleFavoriteResponseDtoFromJson({
        'response': json['response'],
        'movie': (json['data'] as Map<String, dynamic>)['movie'],
        'action': (json['data'] as Map<String, dynamic>)['action'] as String,
      });

  Movie toEntity() => movie.toEntity();
}
