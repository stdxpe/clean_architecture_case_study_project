import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/models/user_model/user_model.dart';

part 'user.freezed.dart';

/// Immutable and type-safe Core-level Domain Entity for [User].
/// API-specific transformations and parsing handled at feature-level [UserModel].

@freezed
sealed class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    String? photoUrl,
  }) = _User;
}
