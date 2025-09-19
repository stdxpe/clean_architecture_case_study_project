import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class ChipListView extends StatelessWidget {
  const ChipListView({required this.list, super.key});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) return const SizedBox.shrink();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.paddings.detailsW,
        ),

        child: Row(
          children: list
              .map(
                (item) => Container(
                  margin: EdgeInsets.only(right: 10.w),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 20.h,
                  ),
                  decoration: BoxDecoration(
                    color: context.colorPalette.text.withAlpha(25),
                    borderRadius: BorderRadius.circular(
                      AppConstants.radius.movieChip,
                    ),
                  ),

                  child: CustomText(
                    text: item,
                    textStyle: context.textTheme.action,
                    fontWeightCustom: FontWeight.w300,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
