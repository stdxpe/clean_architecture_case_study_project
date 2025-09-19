import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_info_dto.freezed.dart';
part 'response_info_dto.g.dart';

/// Immutable Core-Level DTO to represent info envelopes of generic responses.

@freezed
sealed class ResponseInfoDto with _$ResponseInfoDto {
  const factory ResponseInfoDto({
    int? code,
    String? message,
  }) = _ResponseInfoDto;

  factory ResponseInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseInfoDtoFromJson(json);
}
