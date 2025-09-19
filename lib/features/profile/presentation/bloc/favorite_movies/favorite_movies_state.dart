import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_status.dart';

part 'favorite_movies_state.freezed.dart';

@freezed
sealed class FavoriteMoviesState with _$FavoriteMoviesState {
  const factory FavoriteMoviesState({
    required FavoriteMoviesStatus status,
    required List<Movie> favoriteMovies,
    UISideEffect? uiSideEffect,
  }) = _FavoriteMoviesState;

  factory FavoriteMoviesState.initial() => const FavoriteMoviesState(
    status: FavoriteMoviesStatus.initial(),
    favoriteMovies: [],
  );
}
