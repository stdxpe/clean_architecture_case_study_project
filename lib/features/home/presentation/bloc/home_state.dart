import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/utilities/dummy_data.dart';
import 'package:case_study_clean_architecture_project/core/entities/pagination/pagination.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_status.dart';
import 'package:case_study_clean_architecture_project/core/entities/paginated_movies/paginated_movies.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required HomeStatus status,
    required PaginatedMovies paginatedMovies,
    required int currentPageViewIndex,
    UISideEffect? uiSideEffect,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    status: const HomeStatus.initial(),
    paginatedMovies: PaginatedMovies.initial(),
    currentPageViewIndex: 0,
  );

  List<Movie> get movies => paginatedMovies.movies;
  Pagination get pagination => paginatedMovies.pagination;
  Movie get currentMovie =>
      movies.isEmpty ? placeholderMovie : movies[currentPageViewIndex];
}
