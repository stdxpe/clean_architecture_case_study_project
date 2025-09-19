// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    _AuthResponseDto(
      info: ResponseInfoDto.fromJson(json['response'] as Map<String, dynamic>),
      userModel: UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseDtoToJson(_AuthResponseDto instance) =>
    <String, dynamic>{'response': instance.info, 'data': instance.userModel};
