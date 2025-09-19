import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class AnimatedStatusMessage extends StatelessWidget {
  const AnimatedStatusMessage({
    this.message,
    this.alignment,
    this.padding,
    super.key,
  });

  final String? message;
  final Alignment? alignment;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.sizes.errorH,
      padding: padding ?? EdgeInsets.zero,

      child: AnimatedSwitcher(
        duration: 250.ms,
        transitionBuilder: (child, animation) {
          final slideAnimation = Tween<Offset>(
            begin: AppConstants.sizes.errorOffset,
            end: Offset.zero,
          ).animate(animation);

          return FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: slideAnimation,
              child: child,
            ),
          );
        },

        child: (message != null && message!.isNotEmpty)
            ? CustomText(
                key: ValueKey(message),
                text: message!,
                textStyle: context.textTheme.infoLight,
                color: context.colorPalette.error,
                alignment: alignment ?? Alignment.centerRight,
                fontHeightCustom: 1.5,
                textAlignCustom: TextAlign.end,
                padding: EdgeInsets.only(
                  right: AppConstants.paddings.inlineIndent,
                  top: AppConstants.spacings.space10.h,
                  bottom: AppConstants.spacings.space7.h,
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
