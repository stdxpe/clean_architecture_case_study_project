import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/custom_outlined_button.dart';

/// Recommended solution for bottom navigation bar system on [GoRouter].
/// Compatible with [StatefulShellRoute] and [StatefulShellBranch].

class ScaffoldWithBottomNavBar extends StatelessWidget {
  const ScaffoldWithBottomNavBar({
    required this.navigationShell,
    required this.branches,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> branches;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorPalette.scaffoldBackground,
      body: Stack(
        children: branches.mapIndexed((index, child) {
          return AnimatedSlide(
            offset: index.getPageSlideDirection(navigationShell.currentIndex),
            duration: 300.ms,
            curve: Curves.easeInOutQuad,
            child: IgnorePointer(
              ignoring: index != navigationShell.currentIndex,
              child: TickerMode(
                enabled: index == navigationShell.currentIndex,
                child: child,
              ),
            ),
          );
        }).toList(),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: AppConstants.paddings.navButtonH,
          right: AppConstants.paddings.navButtonH,
          bottom: AppConstants.paddings.navButtonBottom,
          top: AppConstants.paddings.navButtonTop,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              spacing: AppConstants.spacings.space10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  text: AppStrings.homeButton,
                  icon: Assets.icons.home,
                  isSelected: navigationShell.currentIndex == 0,
                  onPressed: () {
                    if (navigationShell.currentIndex != 0) {
                      navigationShell.goBranch(0);
                    }
                  },
                ),

                CustomOutlinedButton(
                  icon: Assets.icons.profile,
                  text: AppStrings.profileButton,
                  isSelected: navigationShell.currentIndex == 1,
                  onPressed: () {
                    if (navigationShell.currentIndex != 1) {
                      navigationShell.goBranch(1);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
