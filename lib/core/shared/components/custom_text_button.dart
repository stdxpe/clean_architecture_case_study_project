import 'package:flutter/material.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.onPressed,
    required this.buttonText,
    this.leadingText,
    this.isUnderlinedButton = false,
    this.padding = EdgeInsets.zero,
    this.isCentered = false,
    this.spacing,
    super.key,
  });

  final void Function() onPressed;
  final String buttonText;
  final String? leadingText;
  final bool isUnderlinedButton;
  final EdgeInsetsGeometry padding;
  final double? spacing;
  final bool isCentered;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: Padding(
        padding: padding,

        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: isCentered
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,

          children: [
            if (leadingText != null && leadingText!.isNotEmpty)
              CustomText(
                text: leadingText!,
                textStyle: context.textTheme.infoLight,
                color: context.colorPalette.textFaded05,
              ),

            if (leadingText != null && leadingText!.isNotEmpty)
              SizedBox(width: spacing ?? AppConstants.spacings.space8),

            CustomText(
              text: buttonText,
              textStyle: context.textTheme.infoLight.copyWith(
                decoration: isUnderlinedButton
                    ? TextDecoration.underline
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
