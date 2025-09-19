import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class MovieDetailsCarousel extends StatelessWidget {
  const MovieDetailsCarousel({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        /// Carousel
        SizedBox(
          height: context.mediaQuery.size.height * 0.55,
          child: Swiper(
            duration: 500,
            autoplay: true,
            allowImplicitScrolling: true,
            itemCount: movie.images.length,
            itemBuilder: (BuildContext context, int index) => Container(
              child: movie.posterUrl.isNotNullOrEmpty
                  ? CachedNetworkImage(
                      imageUrl: movie.images.isNotEmpty
                          ? movie.images[index].withHttps
                          : movie.posterUrl.withHttps,
                      fit: BoxFit.cover,
                      fadeOutDuration: 500.ms,

                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                        color: ColorPalette.permaWhite,
                        size: 40.h,
                      ),
                    ).animate().fadeIn(duration: 500.ms)
                  : const SizedBox.shrink(),
            ),
          ),
        ),

        /// Gradient
        Container(
          width: context.mediaQuery.size.width,
          height: AppConstants.sizes.movieDetailsOverlayGradient,
          decoration: BoxDecoration(
            gradient: AppGradients.movieOverlayGradient(
              context.colorPalette.scaffoldBackground,
            ),
          ),
        ),

        /// Title
        CustomText(
          text: movie.title,
          textStyle: context.textTheme.title,
          fontSizeCustom: AppConstants.fontSizes.size30,
          maxLines: 2,
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.paddings.detailsW,
          ),
        ),
      ],
    );
  }
}
