import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_icon_button.dart';

class MovieDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MovieDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: AppConstants.sizes.backButton,
      backgroundColor: ColorPalette.transparent,
      surfaceTintColor: ColorPalette.transparent,
      shadowColor: ColorPalette.transparent,
      leadingWidth:
          AppConstants.paddings.appBarL + AppConstants.sizes.backButton,
      leading: CustomIconButton(
        onPressed: () => context.pop(),
        borderWidth: 0.5,
        iconColor: ColorPalette.permaWhite,
        borderColor: ColorPalette.permaWhite.withAlpha(125),
        backgroundColor: ColorPalette.permaBlack.withAlpha(125),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    AppConstants.sizes.backButton + AppConstants.paddings.appBarBottom,
  );
}
