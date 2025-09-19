import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_status.freezed.dart';

@freezed
sealed class HomeStatus with _$HomeStatus {
  const factory HomeStatus.initial() = _Initial;
  const factory HomeStatus.loading() = _Loading;
  const factory HomeStatus.success() = _Success;
  const factory HomeStatus.loadingMore() = LoadingMore;
  const factory HomeStatus.failure({String? message}) = _Failure;
}
