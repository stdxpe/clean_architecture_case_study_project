import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/shared/overlays/overlay_helper.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/widgets/lottie_favorite_animation.dart';

/// Crated as an [Overlay] ➔ [OverlayEntry], alternative to [LottieFavoriteAnimation].
/// Usage: ’context.overlay.show('FavoriteOverlay(isFavorite)')

class FavoriteOverlay extends HookWidget {
  const FavoriteOverlay({required this.isFavorite, super.key});

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    final _duration = 1000.ms;
    final controller = useAnimationController(duration: _duration);

    useEffect(() {
      // Self destruct/hide after animation completed after 1000.ms
      Future.delayed(_duration, () => OverlayHelper.instance.hide());
      return null;
    });

    return Material(
      color: ColorPalette.transparent,
      child: Center(
        child: SizedBox(
          width: AppConstants.sizes.lottieLike,
          height: AppConstants.sizes.lottieLike,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),

            child: Lottie.asset(
              Assets.lottie.like,
              controller: controller,
              frameRate: const FrameRate(60),
              fit: BoxFit.contain,
              width: AppConstants.sizes.lottieLike,
              height: AppConstants.sizes.lottieLike,
              onLoaded: (composition) {
                /// 📌 İnceleyen geliştirici için not: Assets/lottie/like.json dosyası,
                /// hem Like, hem de Dislike animasyonunu aynı anda içeriyor.
                /// Aşağıda, ’isFavorite’ paramına göre parçalı şekilde oynatıyorum.
                final from = isFavorite ? 0.5 : 0.0;
                final to = isFavorite ? 1.0 : 0.5;
                controller.value = from;
                controller.animateTo(to, duration: _duration);
              },
            ),
          ),
        ),
      ).animate().fadeIn(duration: 200.ms).fadeOut(delay: 800.ms, duration: 200.ms),
    );
  }
}
