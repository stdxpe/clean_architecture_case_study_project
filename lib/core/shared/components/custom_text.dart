import 'package:flutter/material.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Centralized Text widget for the entire app to provide a single point of control.
/// Wraps Flutter's [Text] widget with extra flexibility and padding support.
/// Provides consistent typography and supports future improvements (localization, theme changes, or visual effects..)

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    required this.textStyle,
    this.fontSizeCustom,
    this.fontWeightCustom,
    this.fontHeightCustom,
    this.fontLetterSpacingCustom,
    this.padding = EdgeInsets.zero,
    this.isLineThrough = false,
    this.textAlignCustom,
    this.maxLines = 1,
    this.alignment,
    this.overflow,
    this.color,
    super.key,
  });

  final String text;
  final TextStyle textStyle;
  final double? fontSizeCustom;
  final FontWeight? fontWeightCustom;
  final double? fontHeightCustom;
  final double? fontLetterSpacingCustom;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry? alignment;
  final TextAlign? textAlignCustom;
  final TextOverflow? overflow;
  final bool isLineThrough;
  final Color? color;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: padding,
      child: Text(
        text,
        overflow: overflow ?? TextOverflow.ellipsis,
        textAlign: textAlignCustom ?? TextAlign.center,
        textScaler: TextScaler.noScaling,
        maxLines: maxLines,
        style: textStyle.copyWith(
          color: color ?? context.colorPalette.text,
          height: fontHeightCustom ?? textStyle.height,
          fontSize: fontSizeCustom ?? textStyle.fontSize,
          fontWeight: fontWeightCustom ?? textStyle.fontWeight,
          letterSpacing: fontLetterSpacingCustom ?? textStyle.letterSpacing,
          decoration: isLineThrough ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
