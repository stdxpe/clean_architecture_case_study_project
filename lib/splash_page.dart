import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/utilities/assets.gen.dart';
import 'package:case_study_clean_architecture_project/core/dependency_injection/injector.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/services/navigation/navigation_redirect_service.dart';

/// Root-level page to display at app launch and every auth-state change for min 1500ms.
/// Performs route redirections with [NavigationRedirectService] based on auth-state.

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    final redirectService = getIt<NavigationRedirectService>();
    final route = await redirectService.selectSplashRedirectRoute();
    if (mounted) context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: AppConstants.sizes.lottieSplash,
          width: AppConstants.sizes.lottieSplash,

          child: Lottie.asset(
            context.theme.brightness == Brightness.dark
                ? Assets.lottie.camera
                : Assets.lottie.cameraDark,
            width: AppConstants.sizes.lottieSplash,
            height: AppConstants.sizes.lottieSplash,
            animate: true,
            fit: BoxFit.contain,
          ),
        ).animate().fadeIn(),
      ),
    );
  }
}
