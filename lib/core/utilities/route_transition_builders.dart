import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// Creates custom route transitions for [GoRouter] page builders

class CustomPageTransitions {
  static Page<dynamic> buildFadeTransition(GoRouterState state, Widget child) {
    return CustomTransitionPage(
      child: child,
      transitionDuration: 400.ms,
      key: state.pageKey,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  /// Slide transition between BottomNavBar tabs
  static Widget buildNavBarSlideTransition(
    StatefulNavigationShell navigationShell,
  ) {
    final currentIndex = navigationShell.currentIndex;
    return AnimatedSwitcher(
      duration: 500.ms,
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.easeInOut,
      layoutBuilder: (current, previous) => Stack(
        alignment: Alignment.center,
        children: [...previous, if (current != null) current],
      ),
      transitionBuilder: (child, animation) {
        final offset = Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut));
        return SlideTransition(position: animation.drive(offset), child: child);
      },
      child: KeyedSubtree(key: ValueKey(currentIndex), child: navigationShell),
    );
  }

  /// Slide transition from Right
  static Page<dynamic> slideFromRight({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) => _slideTransition(context, state, child, const Offset(1, 0));

  /// Slide transition from Left
  static Page<dynamic> slideFromLeft({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) => _slideTransition(context, state, child, const Offset(-1, 0));

  /// Helper method for slide transition builder
  static Page<dynamic> _slideTransition(
    BuildContext context,
    GoRouterState state,
    Widget child,
    Offset begin,
  ) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween = Tween(
          begin: begin,
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }
}
