import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class MovieInfoCard extends StatelessWidget {
  const MovieInfoCard({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: AppConstants.sizes.movieOverlayGradient,
            width: context.mediaQuery.size.width,
            decoration: BoxDecoration(
              gradient: AppGradients.movieOverlayGradient(
                ColorPalette.permaBlack,
              ),
            ),
          ),

          Container(
            width: context.mediaQuery.size.width,
            padding: EdgeInsets.symmetric(
              vertical: AppConstants.paddings.cardMovieDescV,
              horizontal: AppConstants.paddings.cardMovieDescH,
            ),
            child:
                Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          Assets.icons.logo,
                          height: AppConstants.sizes.iconLogo,
                          width: AppConstants.sizes.iconLogo,
                        ),

                        SizedBox(width: AppConstants.spacings.space15.w),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: movie.title,
                                textStyle: context.textTheme.title,
                                color: ColorPalette.permaWhite,
                                padding: EdgeInsetsGeometry.only(
                                  bottom: AppConstants.spacings.space4.h,
                                ),
                              ),

                              /// 📌 İnceleyen geliştirici için not:
                              /// Bloc state'te ’isDescriptionExpanded’ ve ’descriptionUpdated’ eventi
                              /// ile de yapılabilirdi. Ama bu minik detay ile Bloc'u kirletmek istemedim.
                              ReadMoreText(
                                movie.description,
                                trimCollapsedText: AppStrings.seeMore,
                                trimExpandedText: AppStrings.hide,
                                colorClickableText: context.colorPalette.text,
                                delimiter: AppStrings.textEllipsisDots,
                                trimMode: TrimMode.Line,
                                moreStyle: context.textTheme.subtitle(
                                  fontWeight: FontWeight.w700,
                                  color: ColorPalette.permaWhite,
                                ),
                                lessStyle: context.textTheme.subtitle(
                                  fontWeight: FontWeight.w700,
                                  color: ColorPalette.permaWhite,
                                ),
                                style: TextStyle(
                                  color: ColorPalette.permaWhite.withAlpha(200),
                                  fontSize: context.textTheme.subtitle.fontSize,
                                  height: context.textTheme.subtitle.height,
                                  fontWeight:
                                      context.textTheme.subtitle.fontWeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                    .animate(key: ValueKey(movie.title))
                    .fadeIn(duration: 1000.ms, curve: Curves.easeOut),
          ),
        ],
      ),
    );
  }
}
