import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_elevated_button.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/token_packs_section.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/bonus_rewards_section.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/glowing_circle_overlay.dart';

class LimitedOffersPage extends StatelessWidget {
  const LimitedOffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppConstants.paddings.limitedOffersPage),

      child: Stack(
        children: [
          GlowingCircleOverlay(
            alignment: Alignment.topCenter,
            blur: AppConstants.blurs.glowingCircleTopBlur,
          ),

          GlowingCircleOverlay(
            alignment: Alignment.bottomCenter,
            blur: AppConstants.blurs.glowingCircleBottomBlur,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomText(
                text: AppStrings.limitedOffer,
                textStyle: context.textTheme.title,
                fontSizeCustom: AppConstants.fontSizes.size20,
                padding: EdgeInsetsGeometry.only(top: 8.h),
              ),

              CustomText(
                text: AppStrings.limitedOfferSubtitle,
                textStyle: context.textTheme.infoLight,
                color: context.colorPalette.text,
                fontWeightCustom: FontWeight.w500,
                maxLines: 2,
                padding: EdgeInsetsGeometry.only(top: 6.h, bottom: 13.h),
              ),

              const BonusRewardsSection(),

              CustomText(
                text: AppStrings.tokenPacksTitle,
                textStyle: context.textTheme.action,
                padding: EdgeInsetsGeometry.only(top: 22.h),
              ),

              const TokenPacksSection(),

              CustomElevatedButton(
                onPressed: () => context.pop(),
                text: AppStrings.tokenButton,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
