import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class FavoriteMovieCard extends StatelessWidget {
  const FavoriteMovieCard({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(Routes.movieDetails, extra: movie),

      child: Card(
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: AppConstants.sizes.movieCardAspectRatio,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  AppConstants.radius.movieCard,
                ),
                child: CachedNetworkImage(
                  imageUrl: movie.posterUrl.withHttps,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            CustomText(
              text: movie.title,
              textAlignCustom: TextAlign.start,
              textStyle: context.textTheme.infoLight,
              fontWeightCustom: FontWeight.w500,
              fontHeightCustom: 1,
              padding: EdgeInsetsGeometry.only(
                top: AppConstants.spacings.space16.h,
              ),
            ),

            CustomText(
              /// Returns ScreenWriter if Director is null or ’N/A’
              text: movie.director.orScreenWriter(movie.writer),
              textAlignCustom: TextAlign.start,
              textStyle: context.textTheme.infoLight,
              color: context.colorPalette.textFaded05,
            ),
          ],
        ),
      ),
    );
  }
}
