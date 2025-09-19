import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Base styling properties of [IconButtonTheme] defined in [ThemeData].

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.onPressed,
    super.key,
    this.icon,
    this.size,
    this.iconSize,
    this.iconColor,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.height,
    this.width,
  });

  final void Function() onPressed;
  final String? icon;
  final double? size;
  final double? iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: IconButton(
        onPressed: onPressed,
        style: context.theme.iconButtonTheme.style?.withOptionalIconButton(
          borderColor: borderColor ?? context.colorPalette.buttonLiteBorder,
          borderWidth: borderWidth ?? AppConstants.sizes.borderWidth,
          borderRadius: borderRadius ?? AppConstants.radius.circular,
          padding: padding ?? EdgeInsets.zero,
          height: height ?? AppConstants.sizes.backButton,
          width: width ?? AppConstants.sizes.backButton,
          backgroundColor:
              backgroundColor ?? context.colorPalette.buttonLiteBackground,
        ),
        icon: SvgPicture.asset(
          icon ?? Assets.icons.leftArrow,
          width: iconSize ?? AppConstants.sizes.iconLeftArrowH,
          height: iconSize ?? AppConstants.sizes.iconLeftArrowH,
          colorFilter: ColorFilter.mode(
            iconColor ?? context.colorPalette.buttonLiteForeground,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
