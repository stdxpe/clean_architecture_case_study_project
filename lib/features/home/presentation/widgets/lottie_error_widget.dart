import 'dart:ui';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// [DEPRECATED]
/// Implemented optional dialog/snackbar/toast messages instead, via [NotificationMode].

class LottieErrorWidget extends StatelessWidget {
  const LottieErrorWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: AppConstants.blurs.sigmaX,
        sigmaY: AppConstants.blurs.sigmaY,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: AppConstants.sizes.loadingOverlay,
            width: AppConstants.sizes.loadingOverlay,
            child: Lottie.asset(
              Assets.lottie.error,
              width: AppConstants.sizes.loadingOverlay,
              height: AppConstants.sizes.loadingOverlay,
              animate: true,
              fit: BoxFit.contain,
            ),
          ),

          CustomText(
            text: (message != null && message!.isNotEmpty)
                ? message!
                : AppStrings.errors.unknown,
            textStyle: context.textTheme.action,
            color: ColorPalette.permaWhite,
            fontHeightCustom: 1.5,
            maxLines: 3,
            padding: EdgeInsets.symmetric(
              vertical: AppConstants.spacings.space10,
              horizontal: AppConstants.spacings.space35,
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms);
  }
}
