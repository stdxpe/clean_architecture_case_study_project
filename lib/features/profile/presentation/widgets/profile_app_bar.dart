import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/core/shared/components/custom_text.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_icon_button.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    this.title,
    this.action,
    this.onTap,
    super.key,
  });

  final String? title;
  final Widget? action;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: AppConstants.sizes.backButton,
      backgroundColor: ColorPalette.transparent,
      surfaceTintColor: ColorPalette.transparent,
      shadowColor: ColorPalette.transparent,
      leadingWidth:
          AppConstants.paddings.appBarL + AppConstants.sizes.backButton,
      leading: CustomIconButton(onPressed: onTap ?? () => context.pop()),

      title: CustomText(
        text: title ?? AppStrings.profileDetails,
        textStyle: context.textTheme.action,
      ),

      actions: [if (action != null) action!],
      actionsPadding: EdgeInsets.only(
        right: AppConstants.paddings.appBarR,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    AppConstants.sizes.backButton + AppConstants.paddings.appBarBottom,
  );
}
