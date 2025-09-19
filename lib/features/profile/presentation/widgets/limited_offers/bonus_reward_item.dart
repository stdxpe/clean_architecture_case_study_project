import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/entities/bonus_reward/bonus_reward.dart';

class BonusRewardItem extends StatelessWidget {
  const BonusRewardItem({required this.reward, super.key});

  final BonusReward reward;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: AppConstants.spacings.space13,
      children: [
        InnerShadow(
          blur: AppConstants.blurs.innerShadowBlur,
          color: ColorPalette.permaWhite,
          offset: Offset.zero,

          child: Container(
            width: AppConstants.sizes.rewardCardHeight.w,
            height: AppConstants.sizes.rewardCardHeight.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colorPalette.bottomSheetGradientSecondary,
            ),

            child: Image.asset(reward.iconPath),
          ),
        ),

        CustomText(
          text: reward.title,
          textStyle: context.textTheme.infoLight,
          fontWeightCustom: FontWeight.w500,
          fontLetterSpacingCustom: 0,
          maxLines: 2,
        ),
      ],
    );
  }
}
