import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_event.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_state.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_status.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movie_swipeable_card.dart';

class MoviesPageview extends HookWidget {
  const MoviesPageview({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return BlocWrapper<HomeBloc, HomeState>(
      provideMode: ProvideMode.subInstance,
      showLoadingOverlay: false,
      isLoading: (s) => s.status.whenOrNull(loading: () => true),
      listener: (context, state, bloc) {
        state.uiSideEffect?.whenOrNull(
          /// Automatically scrolls down after new movies fetched
          animateToNextPage: () async => pageController.nextPage(
            duration: 400.ms,
            curve: Curves.ease,
          ),

          /// Scrolls to top if HomeEvent.scrollToTop event emitted
          animateToTop: () async => pageController.animateToPage(
            0,
            duration: 400.ms,
            curve: Curves.easeInOut,
          ),
        );
      },

      builder: (context, state, bloc, isLoading) {
        return NotificationListener<OverscrollNotification>(
          /// Detects user overscrolls and emits LoadMoreMovies event,
          /// for ’Pull-up-to-load / Infinite Scrolling’ functionality
          onNotification: (notification) {
            if (notification.overscroll > AppConstants.sizes.maxOverscroll) {
              bloc.add(const LoadMoreMovies());
            }
            return true;
          },

          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            itemCount: state.movies.length,
            onPageChanged: (index) =>
                bloc.add(HomeEvent.changePageViewIndex(index)),
            itemBuilder: (context, index) =>
                MovieSwipeableCard(movie: state.movies[index]),
          ),
        );
      },
    );
  }
}
