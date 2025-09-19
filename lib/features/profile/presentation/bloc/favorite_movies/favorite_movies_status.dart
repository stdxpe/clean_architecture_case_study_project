import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_movies_status.freezed.dart';

@freezed
sealed class FavoriteMoviesStatus with _$FavoriteMoviesStatus {
  const factory FavoriteMoviesStatus.initial() = _Initial;
  const factory FavoriteMoviesStatus.loading() = _Loading;
  const factory FavoriteMoviesStatus.success() = _Success;
  const factory FavoriteMoviesStatus.failure(String? message) = _Failure;
}
