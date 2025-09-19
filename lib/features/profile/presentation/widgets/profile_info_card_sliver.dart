import 'package:flutter/material.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/widgets/profile_info_card.dart';

class ProfileInfoCardSliver extends StatelessWidget {
  const ProfileInfoCardSliver({required this.isScrolled, super.key});

  final bool isScrolled;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: true,
      floating: true,
      forceElevated: isScrolled,
      automaticallyImplyLeading: false,
      shadowColor: ColorPalette.transparent,
      surfaceTintColor: ColorPalette.transparent,
      foregroundColor: ColorPalette.transparent,
      backgroundColor: context.theme.scaffoldBackgroundColor,
      expandedHeight: AppConstants.sizes.profilePicH,
      toolbarHeight:
          AppConstants.sizes.profilePicH +
          AppConstants.paddings.appBarBottom +
          AppConstants.spacings.favMoviesTitleTop,
      centerTitle: false,
      titleSpacing: 0,
      title: const ProfileInfoCard(),
    );
  }
}
