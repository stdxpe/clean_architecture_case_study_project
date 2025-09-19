import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/models/response_info_dto/response_info_dto.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/movie_model/movie_model.dart';

part 'favorites_response_dto.freezed.dart';
part 'favorites_response_dto.g.dart';

/// Immutable Feature-level DTO to represent favorite movies response from the API.
/// Wraps favorite [MovieModel] list and [ResponseInfoDto] metadata.

@freezed
abstract class FavoritesResponseDto with _$FavoritesResponseDto {
  const FavoritesResponseDto._();

  ///   FavoritesResponseDto                   →     {JSON}
  ///   ├── response : ResponseInfoDto         →     "response": { ...ResponseInfoDto... }
  ///   └── data                               →     "data": {
  ///       └── movies : List<MovieModel>      →        "movies": [ ...MovieModel list... ]

  const factory FavoritesResponseDto({
    @JsonKey(name: 'response') required ResponseInfoDto info,
    required List<MovieModel> movies,
  }) = _FavoritesResponseDto;

  factory FavoritesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FavoritesResponseDtoFromJson({
        'response': json['response'] as Map<String, dynamic>,
        'movies': (json['data'] as List<dynamic>),
      });
}
