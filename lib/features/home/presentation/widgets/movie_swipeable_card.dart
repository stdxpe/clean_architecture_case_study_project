import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class MovieSwipeableCard extends StatelessWidget {
  const MovieSwipeableCard({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(Routes.movieDetails, extra: movie),
      child: SizedBox(
        height: context.mediaQuery.size.height,
        width: context.mediaQuery.size.width,
        child: movie.posterUrl.isNotNullOrEmpty
            ? CachedNetworkImage(
                imageUrl: movie.posterUrl.withHttps,
                fit: BoxFit.cover,
                fadeInDuration: 0.ms,
                fadeOutDuration: 500.ms,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ).animate().fadeIn(duration: 500.ms)
            : const SizedBox.shrink(),
      ),
    );
  }
}
