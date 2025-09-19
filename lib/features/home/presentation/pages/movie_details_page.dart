import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movie_details_app_bar.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movie_details/movie_info_section.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movie_details/imdb_rating_widget.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/movie_details/movie_details_carousel.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MovieDetailsAppBar(),
      extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MovieDetailsCarousel(movie: movie),

            CustomText(
              text:
                  '${movie.country} • ${movie.year} • ${movie.runtime?.formatDuration()}',
              textStyle: context.textTheme.infoLight,
              padding: EdgeInsets.only(
                top: AppConstants.spacings.space5.h,
              ),
            ),

            CustomText(
              text: movie.description,
              textStyle: context.textTheme.infoLight,
              maxLines: 3,
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.paddings.detailsW,
                vertical: AppConstants.spacings.space12.h,
              ),
            ),

            IMDbRatingWidget(rating: movie.imdbRating, votes: movie.imdbVotes),

            MovieInfoSection(
              title: AppStrings.movieDetailsCast,
              list: movie.actors.seperateList(),
            ),

            CustomText(
              text: AppStrings.movieDetailsAwards,
              textStyle: context.textTheme.title,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                top: AppConstants.spacings.space25,
                left: AppConstants.paddings.detailsWideW,
              ),
            ),

            CustomText(
              text: movie.awards.toString(),
              textStyle: context.textTheme.action,
              maxLines: 2,
              color: ColorPalette.permaRed,
              alignment: Alignment.centerLeft,
              textAlignCustom: TextAlign.left,
              padding: EdgeInsets.only(
                left: AppConstants.paddings.detailsWideW,
                right: AppConstants.paddings.detailsWideW,
                top: AppConstants.paddings.detailsWideW,
              ),
            ),

            MovieInfoSection(
              title: AppStrings.movieDetailsGenre,
              list: movie.genre.seperateList(),
            ),

            MovieInfoSection(
              title: AppStrings.movieDetailsDirector,
              list: movie.director.seperateList(),
            ),

            MovieInfoSection(
              title: AppStrings.movieDetailsScreenplay,
              list: movie.writer.seperateList(),
            ),

            MovieInfoSection(
              title: AppStrings.movieDetailsLanguage,
              list: movie.language.seperateList(),
            ),

            SizedBox(height: AppConstants.paddings.main.h),
          ],
        ),
      ),
    );
  }
}
