import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_bloc.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_state.dart';

/// Handles navigation redirections based on [SettingsBloc]'s state.

class NavigationRedirectService {
  NavigationRedirectService(this._settingsBloc);

  final SettingsBloc _settingsBloc;

  /// Redirect method based on [SettingsState] and current route
  /// Returns the target route or null if no redirect
  String? redirect(String currentLocation) {
    final isAuthenticated = _settingsBloc.state.isUserAuthenticated;
    final isConnected = _settingsBloc.state.isConnected;

    logger.d(Messages.core.navigation(currentLocation));

    /// Redirects if no valid internet connection
    if (!isConnected) return Routes.noConnection;

    switch (currentLocation) {
      /// Auth-Required Routes | Redirects to SignInScreen if not authenticated (through SplashScreen)
      case Routes.home:
      case Routes.movieDetails:
      case Routes.profile:
      case Routes.profileDetails:
      case Routes.uploadPhoto:
        if (!isAuthenticated) return Routes.splash;
        return null;

      /// Public Routes | Redirects to HomeScreen if authenticated (through SplashScreen)
      case Routes.signIn:
      case Routes.signUp:
        if (isAuthenticated) return Routes.splash;
        return null;

      // No-Redirect Routes
      case Routes.splash:
      case Routes.termsAndConditions:
      case Routes.limitedOffers:
        return null;

      /// Default Route | Redirects to SplashScreen if auth state changes
      default:
        return Routes.splash;
    }
  }

  /// Redirect logic for SplashPage (with min 1500.ms delay for animation display)
  Future<String> selectSplashRedirectRoute() async {
    await Future<void>.delayed(const Duration(milliseconds: 1500));
    return _settingsBloc.state.isUserAuthenticated
        ? Routes.home
        : Routes.signIn;
  }
}
