import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_status.freezed.dart';

@freezed
sealed class SignInStatus with _$SignInStatus {
  const factory SignInStatus.initial() = _Initial;
  const factory SignInStatus.loading() = _Loading;
  const factory SignInStatus.success() = _Success;
  const factory SignInStatus.failure(String message) = _Failure;
}
