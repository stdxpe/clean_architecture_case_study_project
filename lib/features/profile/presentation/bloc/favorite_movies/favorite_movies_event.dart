import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_movies_event.freezed.dart';

@freezed
sealed class FavoriteMoviesEvent with _$FavoriteMoviesEvent {
  const factory FavoriteMoviesEvent.getFavorites() = GetFavoritesEvent;
}
