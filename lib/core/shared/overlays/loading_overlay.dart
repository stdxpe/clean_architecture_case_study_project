import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/lottie_loading_animation.dart';

/// Crated as an [Overlay] ➔ [OverlayEntry], alternative to [LoadingOverlayAlternative].
/// Usage: ’context.overlay.show('LoadingOverlay()’
///   and: ’context.overlay.hide()’

class LoadingOverlay extends HookWidget {
  const LoadingOverlay({super.key, this.lottieAsset, this.child});

  final String? lottieAsset;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorPalette.transparent,
      child: Center(
        child: SizedBox(
          height: AppConstants.sizes.loadingOverlay,
          width: AppConstants.sizes.loadingOverlay,
          child:
              child ??
              Lottie.asset(
                lottieAsset ?? Assets.lottie.loading,
                width: AppConstants.sizes.loadingOverlay,
                height: AppConstants.sizes.loadingOverlay,
                animate: true,
                repeat: true,
                fit: BoxFit.contain,
              ),
        ),
      ).animate().fadeIn(duration: 150.ms),
    );
  }
}
