// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponseDto _$ProfileResponseDtoFromJson(Map<String, dynamic> json) =>
    _ProfileResponseDto(
      info: ResponseInfoDto.fromJson(json['response'] as Map<String, dynamic>),
      profile: ProfileModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseDtoToJson(_ProfileResponseDto instance) =>
    <String, dynamic>{'response': instance.info, 'data': instance.profile};
