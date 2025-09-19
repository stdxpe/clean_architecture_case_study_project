import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadInitialMovies() = LoadInitialMovies;
  const factory HomeEvent.loadMoreMovies() = LoadMoreMovies;
  const factory HomeEvent.toggleFavoriteMovie(String movieId) = ToggleFavorite;
  const factory HomeEvent.changePageViewIndex(int index) = ChangePageViewIndex;
  const factory HomeEvent.scrollToTop() = ScrollToTop;
}
