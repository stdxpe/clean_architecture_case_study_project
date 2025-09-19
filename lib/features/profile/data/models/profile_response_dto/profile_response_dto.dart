import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/models/response_info_dto/response_info_dto.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/models/profile_model/profile_model.dart';

part 'profile_response_dto.freezed.dart';
part 'profile_response_dto.g.dart';

/// Immutable and type-safe Feature-level DTO to represent authentication responses.
/// Wraps [ProfileModel] model and [ResponseInfoDto] metadata provided by the API.

@freezed
abstract class ProfileResponseDto with _$ProfileResponseDto {
  const ProfileResponseDto._();

  const factory ProfileResponseDto({
    @JsonKey(name: 'response') required ResponseInfoDto info,
    @JsonKey(name: 'data') required ProfileModel profile,
  }) = _ProfileResponseDto;

  factory ProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseDtoFromJson(json);

  User toEntity() => profile.toEntity();
}
