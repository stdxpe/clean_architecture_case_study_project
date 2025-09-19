import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class NoConnectionOverlay extends StatelessWidget {
  const NoConnectionOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Lottie.asset(
            Assets.lottie.noConnection,
            height: AppConstants.sizes.noConnectionIconH,
            width: AppConstants.sizes.noConnectionIconH,
            fit: BoxFit.contain,
            animate: true,
          ),

          CustomText(
            text: AppStrings.noInternetConnection,
            textStyle: context.textTheme.action,
            fontSizeCustom: AppConstants.fontSizes.size16,
            padding: EdgeInsetsGeometry.only(
              top: AppConstants.spacings.space15,
              bottom: AppConstants.spacings.space5,
            ),
          ),

          CustomText(
            text: AppStrings.noInternetConnectionDetails,
            textStyle: context.textTheme.infoLight,
            color: context.colorPalette.text.withAlpha(150),
          ),
        ],
      ),
    ).animate().fadeIn(delay: 250.ms, duration: 750.ms);
  }
}
