// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoviesResponseDto _$MoviesResponseDtoFromJson(Map<String, dynamic> json) =>
    _MoviesResponseDto(
      info: ResponseInfoDto.fromJson(json['response'] as Map<String, dynamic>),
      movies: (json['movies'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationDto.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$MoviesResponseDtoToJson(_MoviesResponseDto instance) =>
    <String, dynamic>{
      'response': instance.info,
      'movies': instance.movies,
      'pagination': instance.pagination,
    };
