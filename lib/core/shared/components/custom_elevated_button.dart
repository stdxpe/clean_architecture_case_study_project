import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Base styling properties of [ElevatedButtonTheme] defined in [ThemeData].

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.textStyle,
    this.padding,
    this.height,
    this.radius,
    this.icon,
    super.key,
  });

  final void Function() onPressed;
  final String text;
  final String? icon;
  final bool isLoading;
  final double? height;
  final double? radius;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        clipBehavior: Clip.hardEdge,
        style: context.theme.elevatedButtonTheme.style?.withOptional(
          textStyle: textStyle,
          padding: padding,
          radius: radius,
        ),

        child: isLoading
            ? const SpinKitRing(color: ColorPalette.permaWhite, lineWidth: 4)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    SvgPicture.asset(icon!),
                    SizedBox(width: AppConstants.spacings.space4),
                  ],
                  CustomText(
                    text: text,
                    textStyle: textStyle ?? context.textTheme.action,
                    color: ColorPalette.permaWhite,
                  ),
                ],
              ),
      ),
    );
  }
}
