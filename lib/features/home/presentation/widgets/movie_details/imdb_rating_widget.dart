import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class IMDbRatingWidget extends StatelessWidget {
  const IMDbRatingWidget({this.rating, this.votes, super.key});

  final String? rating;
  final String? votes;

  @override
  Widget build(BuildContext context) {
    return (rating.isNotNullOrEmpty)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,

            children: [
              Icon(Icons.star, color: Colors.amber, size: 30.sp),

              CustomText(
                text: rating!,
                textStyle: context.textTheme.infoBold,
                fontSizeCustom: AppConstants.fontSizes.size30,
                padding: EdgeInsetsGeometry.only(
                  left: AppConstants.spacings.space5.w,
                ),
              ),

              CustomText(
                text: ' /10',
                textStyle: context.textTheme.infoLight,
                fontSizeCustom: AppConstants.fontSizes.size15,
              ),

              // Optional IMDb Votes Count Display
              // if(votes.isNotNullOrEmpty)
              // CustomText(
              //   text: ' ($votes votes)',
              //   textStyle: context.textTheme.infoLight,
              // ),
            ],
          )
        : const SizedBox.shrink();
  }
}
