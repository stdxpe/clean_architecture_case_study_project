import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class ScrollToTopButton extends StatelessWidget {
  final int currentIndex;
  final VoidCallback onTap;

  const ScrollToTopButton({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: AppConstants.paddings.scrollToTopChip,

      child:
          GestureDetector(
                onTap: onTap,
                child: Align(
                  alignment: Alignment.topCenter,

                  child: Chip(
                    label: Row(
                      spacing: AppConstants.spacings.space4,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.keyboard_double_arrow_up),

                        CustomText(
                          text: AppStrings.scrollTop,
                          textStyle: context.textTheme.infoBold,
                          color: ColorPalette.permaBlack.withAlpha(200),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .animate(target: currentIndex >= 2 ? 1 : 0)
              .fadeIn(delay: 1500.ms, duration: 300.ms)
              .moveY(end: 0, begin: -20, duration: 300.ms),
    );
  }
}
