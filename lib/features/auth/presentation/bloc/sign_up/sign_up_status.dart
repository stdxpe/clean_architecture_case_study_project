import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_status.freezed.dart';

@freezed
sealed class SignUpStatus with _$SignUpStatus {
  const factory SignUpStatus.initial() = _Initial;
  const factory SignUpStatus.loading() = _Loading;
  const factory SignUpStatus.success() = _Success;
  const factory SignUpStatus.failure(String message) = _Failure;
}
