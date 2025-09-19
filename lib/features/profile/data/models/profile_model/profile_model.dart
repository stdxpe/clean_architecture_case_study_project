import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

/// Immutable Feature-Level DTO for [User] or [Profile].
/// Ensures type-safe transformation to [User] entity via ’toEntity()’ method.

/// 📌 Created as a seperate class to support Profile-specific properties in future.

@freezed
abstract class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel({
    required String id,
    required String name,
    required String email,
    String? photoUrl,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  User toEntity() => User(
    id: id,
    name: name,
    email: email,
    photoUrl: (photoUrl != null && photoUrl!.isEmpty) ? null : photoUrl,
  );
}
