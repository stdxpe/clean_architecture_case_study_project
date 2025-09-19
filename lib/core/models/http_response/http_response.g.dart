// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HttpResponse _$HttpResponseFromJson(Map<String, dynamic> json) =>
    _HttpResponse(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      statusMessage: json['statusMessage'] as String?,
      data: json['data'],
      extra: json['extra'] as Map<String, dynamic>?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$HttpResponseToJson(_HttpResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
      'data': instance.data,
      'extra': instance.extra,
      'headers': instance.headers,
    };
