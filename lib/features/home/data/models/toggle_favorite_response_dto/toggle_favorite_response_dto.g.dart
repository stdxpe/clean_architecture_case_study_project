// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_favorite_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ToggleFavoriteResponseDto _$ToggleFavoriteResponseDtoFromJson(
  Map<String, dynamic> json,
) => _ToggleFavoriteResponseDto(
  info: ResponseInfoDto.fromJson(json['response'] as Map<String, dynamic>),
  movie: MovieModel.fromJson(json['movie'] as Map<String, dynamic>),
  action: json['action'] as String,
);

Map<String, dynamic> _$ToggleFavoriteResponseDtoToJson(
  _ToggleFavoriteResponseDto instance,
) => <String, dynamic>{
  'response': instance.info,
  'movie': instance.movie,
  'action': instance.action,
};
