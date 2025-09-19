import 'package:flutter/material.dart';

import 'package:case_study_clean_architecture_project/core/utilities/dummy_data.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/bonus_reward_item.dart';

class BonusRewardsSection extends StatelessWidget {
  const BonusRewardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppConstants.paddings.rewardCardHorizontal,
        right: AppConstants.paddings.rewardCardHorizontal,
        bottom: AppConstants.paddings.rewardCardBottom,
        top: AppConstants.paddings.rewardCardTop,
      ),

      decoration: BoxDecoration(
        gradient: AppGradients.bonusRewards,
        border: Border.all(color: ColorPalette.permaWhite.withAlpha(25)),
        borderRadius: BorderRadius.circular(
          AppConstants.radius.bottomSheetGlass,
        ),
      ),

      child: Column(
        spacing: AppConstants.spacings.space14,
        children: [
          CustomText(
            text: AppStrings.bonus,
            textStyle: context.textTheme.action,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: bonusRewards
                .map((item) => BonusRewardItem(reward: item))
                .toList(),
          ),
        ],
      ),
    );
  }
}
