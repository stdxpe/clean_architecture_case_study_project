// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseErrorDto _$ResponseErrorDtoFromJson(Map<String, dynamic> json) =>
    _ResponseErrorDto(
      info: ResponseInfoDto.fromJson(json['response'] as Map<String, dynamic>),
      data: json['data'],
    );

Map<String, dynamic> _$ResponseErrorDtoToJson(_ResponseErrorDto instance) =>
    <String, dynamic>{'response': instance.info, 'data': instance.data};
