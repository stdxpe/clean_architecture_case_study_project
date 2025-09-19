import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Base styling properties of [OutlinedButtonTheme] defined in [ThemeData].

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.onPressed,
    this.iconSize,
    super.key,
  });

  final void Function() onPressed;
  final String icon;
  final String text;
  final bool isSelected;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: context.theme.outlinedButtonTheme.style?.copyWith(
        side: WidgetStateProperty.all(
          BorderSide(
            width: AppConstants.sizes.borderWidth,
            color: isSelected
                ? context.colorPalette.text.withAlpha(200)
                : context.colorPalette.buttonLiteBorder,
          ),
        ),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: AppConstants.spacings.space10,
        children: [
          SvgPicture.asset(
            icon,
            width: iconSize ?? AppConstants.sizes.navBarIconH,
            height: iconSize ?? AppConstants.sizes.navBarIconH,
            colorFilter: ColorFilter.mode(
              context.colorPalette.navigationBar,
              BlendMode.srcIn,
            ),
          ),

          CustomText(
            text: text,
            textStyle: context.textTheme.action,
            fontSizeCustom: AppConstants.fontSizes.size12,
          ),
        ],
      ),
    );
  }
}
