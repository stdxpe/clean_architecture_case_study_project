import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

class ProfileListile extends StatelessWidget {
  const ProfileListile({
    required this.text,
    required this.icon,
    this.onSwitched,
    this.isTransparent = false,
    this.trailingText,
    this.paddingV,
    this.onTap,
    super.key,
    this.defaultValue = true,
  });

  final String text;
  final IconData icon;
  final String? trailingText;
  final void Function()? onTap;
  final void Function(bool value)? onSwitched;

  final bool defaultValue;
  final double? paddingV;
  final bool isTransparent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.paddings.profilePageW,
        vertical: AppConstants.paddings.profileListileH,
      ),

      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.radius.profileCard),

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppConstants.radius.profileCard,
            ),
            color: isTransparent
                ? ColorPalette.transparent
                : context.colorPalette.text.withAlpha(10),
          ),

          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.paddings.profileListileInsideH,
            vertical: paddingV ?? AppConstants.paddings.profileListileInsideV,
          ),

          child: Row(
            spacing: AppConstants.spacings.space8,
            children: [
              Icon(icon, color: context.colorPalette.text, size: 18.h),

              CustomText(
                text: text,
                textStyle: context.textTheme.action,
                fontSizeCustom: AppConstants.fontSizes.size13,
                textAlignCustom: TextAlign.center,
              ),

              const Spacer(),

              if (trailingText != null)
                CustomText(
                  text: trailingText!,
                  textStyle: context.textTheme.infoLight,
                ),

              if (onSwitched != null)
                SizedBox(
                  height: 23.h,
                  child: FittedBox(
                    child: CupertinoSwitch(
                      value: defaultValue,
                      onChanged: onSwitched,
                      activeTrackColor: context.colorPalette.text,
                      inactiveTrackColor: context.colorPalette.textFaded05,
                      thumbColor: context.colorPalette.scaffoldBackground,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
