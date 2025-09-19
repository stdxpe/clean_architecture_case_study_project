import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class NoFavoriteMoviesYetWidget extends StatelessWidget {
  const NoFavoriteMoviesYetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppConstants.spacings.space120.h),
      child: Column(
        spacing: AppConstants.spacings.space16.h,
        children: [
          Icon(
            CupertinoIcons.square_favorites_alt_fill,
            size: AppConstants.sizes.iconNoMoviesYet,
            color: context.colorPalette.textFaded075,
          ),

          CustomText(
            text: AppStrings.noFavoriteMoviesYet,
            textStyle: context.textTheme.infoLight,
            color: context.colorPalette.textFaded075,
            textAlignCustom: TextAlign.center,
            maxLines: 2,
          ),
        ].animate(interval: 350.ms).fadeIn(delay: 300.ms, duration: 500.ms),
      ),
    );
  }
}
