import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Base styling properties of [FilledButtonTheme] defined in [ThemeData].

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    required this.icon,
    required this.onPressed,
    this.isLoading = false,
    this.height,
    this.iconSize,
    super.key,
  });

  final void Function() onPressed;
  final bool isLoading;
  final String icon;
  final double? height;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final finalHeight = height ?? AppConstants.sizes.socialButtonHeight.h;

    return Align(
      child: SizedBox(
        height: finalHeight,
        width: finalHeight,
        child: FilledButton(
          onPressed: onPressed,
          style: context.theme.filledButtonTheme.style?.withOptionalFilled(
            minimumSize: Size(finalHeight, finalHeight),
          ),

          child: Center(
            child: isLoading
                ? SpinKitRing(
                    color: ColorPalette.permaWhite,
                    size: iconSize ?? AppConstants.sizes.iconSocialH,
                    lineWidth: 4,
                  )
                : SvgPicture.asset(
                    icon,
                    width: iconSize ?? AppConstants.sizes.iconSocialH,
                    height: iconSize ?? AppConstants.sizes.iconSocialH,
                    colorFilter: ColorFilter.mode(
                      context.colorPalette.buttonLiteForeground,
                      BlendMode.srcIn,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
