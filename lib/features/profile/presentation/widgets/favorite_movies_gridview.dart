import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/favorite_movie_card.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/no_favorites_yet_widget.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_bloc.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_state.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_status.dart';

class FavoriteMoviesGridview extends StatelessWidget {
  const FavoriteMoviesGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWrapper<FavoriteMoviesBloc, FavoriteMoviesState>(
      provideMode: ProvideMode.lazySingleton,
      showLoadingOverlay: false,
      isLoading: (s) => s.status.whenOrNull(loading: () => true),
      uiSideEffects: (state) => state.uiSideEffect,

      builder: (context, state, bloc, isLoading) {
        return (state.favoriteMovies.isEmpty && !isLoading)
            ? const NoFavoriteMoviesYetWidget()
            : GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.paddings.profilePageH,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: AppConstants.spacings.gridItemsVBtwn,
                  crossAxisSpacing: AppConstants.spacings.gridItemsHBtwn,
                  childAspectRatio: AppConstants.sizes.gridViewAspectRatio,
                  crossAxisCount: 2,
                ),
                itemCount: state.favoriteMovies.length,
                itemBuilder: (context, index) =>
                    FavoriteMovieCard(movie: state.favoriteMovies[index]),
              ).animate().fadeIn(duration: 500.ms);
      },
    );
  }
}
