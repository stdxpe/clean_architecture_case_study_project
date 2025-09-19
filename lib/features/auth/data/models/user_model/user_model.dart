import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// Immutable Feature-Level DTO for [User].
/// Ensures type-safe transformation to [User] entity via ’toEntity()’ method.

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String id,
    required String name,
    required String email,
    String? photoUrl,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
    id: id,
    name: name,
    email: email,
    photoUrl: (photoUrl != null && photoUrl!.isEmpty) ? null : photoUrl,
  );
}
