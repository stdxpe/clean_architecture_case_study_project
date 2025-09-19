import 'dart:ui';
import 'dart:async';

import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/wrappers/bloc_wrapper.dart';
import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/shared/overlays/favorite_overlay.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_state.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_status.dart';

/// [DEPRECATED]
/// Implemented [FavoriteOverlay] instead.
/// Usage: ’context.overlay.show('FavoriteOverlay(isFavorite)')

class LottieFavoriteAnimation extends HookWidget {
  const LottieFavoriteAnimation({required this.movieId, super.key});

  final String movieId;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: 1000.ms);
    final hookVisibility = useState(false);

    return BlocWrapper<HomeBloc, HomeState>(
      provideMode: ProvideMode.subInstance,
      showLoadingOverlay: false,
      isLoading: (s) => s.status.whenOrNull(loading: () => true),
      listenWhen: (p, c) {
        final prevMovie = p.paginatedMovies.movies.byId(movieId) as Movie;
        final currMovie = c.paginatedMovies.movies.byId(movieId) as Movie;
        return prevMovie.isFavorite != currMovie.isFavorite;
      },
      listener: (context, state, bloc) {
        final currMovie = state.paginatedMovies.movies.byId(movieId) as Movie;

        /// 📌 İnceleyen geliştirici için not: Assets/lottie/like.json dosyası,
        /// hem Like, hem de Dislike animasyonunu aynı anda içeriyor.
        /// Aşağıda, ’isFavorite’ state'ine göre parçalı şekilde oynatıyorum.
        (currMovie.isFavorite)
            ? controller.playSegment(0, 0.5, 1000.ms)
            : controller.playSegment(0.5, 1, 1000.ms);
        hookVisibility.value = true;
        Timer(1000.ms, () => hookVisibility.value = false);
      },

      builder: (context, state, bloc, isLoading) {
        return (hookVisibility.value)
            ? AbsorbPointer(
                child:
                    Center(
                          child: SizedBox(
                            height: AppConstants.sizes.lottieLike,
                            width: AppConstants.sizes.lottieLike,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 1.5,
                                sigmaY: 1.5,
                              ),
                              child: Lottie.asset(
                                Assets.lottie.like,
                                controller: controller,
                                frameRate: const FrameRate(60),
                                fit: BoxFit.contain,
                                width: AppConstants.sizes.lottieLike,
                                height: AppConstants.sizes.lottieLike,
                              ),
                            ),
                          ),
                        )
                        .animate()
                        .fadeIn(duration: 200.ms)
                        .fadeOut(delay: 800.ms, duration: 200.ms),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
