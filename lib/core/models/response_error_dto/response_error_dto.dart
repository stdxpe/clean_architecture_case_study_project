import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/models/response_info_dto/response_info_dto.dart';

part 'response_error_dto.freezed.dart';
part 'response_error_dto.g.dart';

/// Immutable Core-Level DTO to represent error envelopes of generic responses.
/// Wraps nullable data, and [ResponseInfoDto] metadata fields provided by the API.

@freezed
sealed class ResponseErrorDto with _$ResponseErrorDto {
  const ResponseErrorDto._();

  const factory ResponseErrorDto({
    @JsonKey(name: 'response') required ResponseInfoDto info,
    @JsonKey(name: 'data') dynamic data,
  }) = _ResponseErrorDto;

  factory ResponseErrorDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseErrorDtoFromJson(json);

  int? get code => info.code;
  String? get message => info.message;
}
