// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationDto _$PaginationDtoFromJson(Map<String, dynamic> json) =>
    _PaginationDto(
      totalCount: (json['totalCount'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      maxPage: (json['maxPage'] as num).toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$PaginationDtoToJson(_PaginationDto instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'perPage': instance.perPage,
      'maxPage': instance.maxPage,
      'currentPage': instance.currentPage,
    };
