import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/overlays/loading_overlay.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Widget alternative to [LoadingOverlay].
/// Recommended usage: ’context.overlay.show('LoadingOverlay()’
///               and: ’context.overlay.hide()’

class LoadingOverlayAlternative extends StatelessWidget {
  const LoadingOverlayAlternative({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: AppConstants.sizes.loadingOverlay,
        width: AppConstants.sizes.loadingOverlay,

        child: Lottie.asset(
          Assets.lottie.loading,
          width: AppConstants.sizes.loadingOverlay,
          height: AppConstants.sizes.loadingOverlay,
          animate: true,
          fit: BoxFit.contain,
        ),
      ).animate().fadeIn(duration: 150.ms),
    );
  }
}
