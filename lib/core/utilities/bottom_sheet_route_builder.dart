import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Creates [GoRouter]-compatible page routes for modal bottom sheets.
/// Style attributes come directly from [BottomSheetThemeData] of [Theme].

class ModalBottomSheetPage<T> extends Page<T> {
  final WidgetBuilder builder;
  final bool useRootNavigator;
  final bool isDismissible;
  final bool isScrollControlled;
  final Offset? anchorPoint;
  final AnimationController? controller;

  const ModalBottomSheetPage({
    required this.builder,
    this.useRootNavigator = true,
    this.isDismissible = true,
    this.isScrollControlled = true,
    this.anchorPoint,
    this.controller,
    super.key,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    final screen = context.mediaQuery.size;
    return ModalBottomSheetRoute<T>(
      builder: builder,
      settings: this,
      anchorPoint: anchorPoint,
      isDismissible: isDismissible,
      isScrollControlled: isScrollControlled,
      transitionAnimationController: controller,
      sheetAnimationStyle: const AnimationStyle(curve: Curves.bounceIn),
      constraints: BoxConstraints(
        maxWidth: screen.width * AppConstants.sizes.bottomSheetRatioW,
        maxHeight: screen.height * AppConstants.sizes.bottomSheetRatioH,
      ),
    )
    /// 📌 Optional if nested [GoRouter] routes implemented
    /// Syncs [GoRouter] stack when bottom sheet is dismissed by ’isDismissible’
    // ..popped.whenComplete(() {
    //   if (context.mounted && context.canPop()) context.pop();
    // });
    ;
  }
}
