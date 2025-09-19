import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Base styling properties of [InputDecorationTheme] defined in [ThemeData].

class CustomTextField extends HookWidget {
  const CustomTextField({
    required this.onChanged,
    required this.prefixIcon,
    this.keyboardType = TextInputType.emailAddress,
    this.padding = EdgeInsets.zero,
    this.obscureText = false,
    this.onToggled,
    this.hintText,
    super.key,
  });

  final void Function(String input) onChanged;
  final void Function()? onToggled;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry padding;
  final String prefixIcon;
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    useListenable(focusNode);

    return Padding(
      padding: padding,
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: context.textTheme.infoLight(
          color: context.colorPalette.textFieldForeground,
        ),
        cursorColor: context.colorPalette.textFieldForeground,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: AppConstants.paddings.textFieldLeft,
              right: AppConstants.paddings.textFieldTextH,
            ),

            child: SvgPicture.asset(
              prefixIcon,
              width: AppConstants.sizes.iconPrefix,
              height: AppConstants.sizes.iconPrefix,
              colorFilter: ColorFilter.mode(
                context.colorPalette.textFieldForeground,
                BlendMode.srcIn,
              ),
            ),
          ),

          suffixIcon: onToggled != null
              ? GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: onToggled,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: AppConstants.paddings.textFieldTextH,
                      right: AppConstants.paddings.textFieldRight,
                    ),

                    child: SvgPicture.asset(
                      obscureText
                          ? Assets.icons.visibilityOff
                          : Assets.icons.visibilityOn,
                      width: AppConstants.sizes.iconSuffix,
                      height: AppConstants.sizes.iconSuffix,
                      colorFilter: ColorFilter.mode(
                        context.colorPalette.textFieldForeground,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
