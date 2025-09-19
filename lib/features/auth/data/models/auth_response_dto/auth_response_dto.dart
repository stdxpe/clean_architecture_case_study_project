import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/features/auth/data/models/user_model/user_model.dart';
import 'package:case_study_clean_architecture_project/core/models/response_info_dto/response_info_dto.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

/// Immutable and type-safe Feature-Level DTO to represent authentication responses.
/// Wraps [UserModel] and [ResponseInfoDto] metadata provided by the API.

@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  const AuthResponseDto._();

  const factory AuthResponseDto({
    @JsonKey(name: 'response') required ResponseInfoDto info,
    @JsonKey(name: 'data') required UserModel userModel,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);
}
