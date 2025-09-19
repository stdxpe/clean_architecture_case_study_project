// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoritesResponseDto _$FavoritesResponseDtoFromJson(
  Map<String, dynamic> json,
) => _FavoritesResponseDto(
  info: ResponseInfoDto.fromJson(json['response'] as Map<String, dynamic>),
  movies: (json['movies'] as List<dynamic>)
      .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FavoritesResponseDtoToJson(
  _FavoritesResponseDto instance,
) => <String, dynamic>{'response': instance.info, 'movies': instance.movies};
