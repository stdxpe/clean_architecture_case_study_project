import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_status.freezed.dart';

@freezed
sealed class ProfileStatus with _$ProfileStatus {
  const factory ProfileStatus.initial() = _Initial;
  const factory ProfileStatus.loading() = _Loading;
  const factory ProfileStatus.success() = _Success;
  const factory ProfileStatus.failure(String? message) = _Failure;
}
