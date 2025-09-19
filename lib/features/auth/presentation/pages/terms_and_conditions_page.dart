import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_elevated_button.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/limited_offers/glowing_circle_overlay.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.spacings.space20,
        vertical: AppConstants.spacings.space20,
      ),

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
                text: AppStrings.termsAndConditionsTitle,
                color: context.theme.colorPalette.text,
                textStyle: context.textTheme.title,
                fontSizeCustom: AppConstants.fontSizes.size17,
                padding: EdgeInsets.only(top: AppConstants.spacings.space10),
              ),

              CustomText(
                text: AppStrings.termsAndConditionsMainText,
                color: context.theme.colorPalette.text,
                textStyle: context.textTheme.subtitle,
                fontSizeCustom: AppConstants.fontSizes.size13,
                textAlignCustom: TextAlign.start,
                fontHeightCustom: 1.3,
                maxLines: 50,
                padding: EdgeInsets.only(top: AppConstants.spacings.space25),
              ),

              CustomText(
                text: AppStrings.termsAndConditionsClosingText,
                color: context.theme.colorPalette.text,
                textStyle: context.textTheme.subtitle,
                fontSizeCustom: AppConstants.fontSizes.size13,
                textAlignCustom: TextAlign.start,
                fontHeightCustom: 1.25,
                maxLines: 5,
                padding: EdgeInsets.only(top: AppConstants.spacings.space15),
              ),

              const Spacer(),

              CustomElevatedButton(
                onPressed: () => context.pop(),
                text: AppStrings.termsAndConditionsButton,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
