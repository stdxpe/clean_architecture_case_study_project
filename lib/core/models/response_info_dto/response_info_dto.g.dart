// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseInfoDto _$ResponseInfoDtoFromJson(Map<String, dynamic> json) =>
    _ResponseInfoDto(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResponseInfoDtoToJson(_ResponseInfoDto instance) =>
    <String, dynamic>{'code': instance.code, 'message': instance.message};
