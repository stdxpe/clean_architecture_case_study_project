import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/shared/overlays/favorite_overlay.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_event.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_state.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_status.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/favorite_button.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movies_pageview.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movie_info_card.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/load_more_indicator.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/scroll_to_top_button.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/lottie_loading_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocWrapper<HomeBloc, HomeState>(
      provideMode: ProvideMode.factory,
      isLoading: (state) => state.status.whenOrNull(loading: () => true),
      isInitial: (state) => state.status.whenOrNull(initial: () => true),
      loadingOverlay: const LoadingOverlayAlternative(),
      uiSideEffects: (state) => state.uiSideEffect,

      listener: (context, state, bloc) {
        state.uiSideEffect?.whenOrNull(
          showFavoriteAnimation: (isFavorite) =>
              context.overlay.show(FavoriteOverlay(isFavorite: isFavorite)),
        );
      },

      builder: (context, state, bloc, isLoading) {
        return Scaffold(
          body: Stack(
            children: [
              const MoviesPageview(),

              MovieInfoCard(movie: state.currentMovie),

              FavoriteButton(
                onTap: () => bloc.add(ToggleFavorite(state.currentMovie.id)),
                isFavorite: state.currentMovie.isFavorite,
              ),

              ScrollToTopButton(
                onTap: () => bloc.add(const ScrollToTop()),
                currentIndex: state.currentPageViewIndex,
              ),

              if (state.status is LoadingMore) const LoadingMoreIndicator(),
            ],
          ).animate().fadeIn(duration: 500.ms),
        );
      },
    );
  }
}
