import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/splash_page.dart';
import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/utilities/keyboard_dismisser.dart';
import 'package:case_study_clean_architecture_project/core/dependency_injection/injector.dart';
import 'package:case_study_clean_architecture_project/core/utilities/route_transition_builders.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_bloc.dart';
import 'package:case_study_clean_architecture_project/core/utilities/bottom_sheet_route_builder.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/pages/home_page.dart';
import 'package:case_study_clean_architecture_project/core/shared/overlays/no_connection_overlay.dart';
import 'package:case_study_clean_architecture_project/core/shared/components/scaffold_with_nav_bar.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/pages/sign_up_page.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/pages/sign_in_page.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/pages/profile_page.dart';
import 'package:case_study_clean_architecture_project/core/services/navigation/navigation_stream_notifier.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/pages/movie_details_page.dart';
import 'package:case_study_clean_architecture_project/core/services/navigation/navigation_redirect_service.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/pages/upload_photo_page.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/pages/limited_offers_page.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/pages/profile_details_page.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/pages/terms_and_conditions_page.dart';

/// [GoRouter] configuration for the app-wide navigation.
/// Uses [NavigationRedirectService] to perform route redirects.
/// Uses [NavigationNotifier] to refresh on auth state changes via [SettingsBloc].
/// Uses [CustomPageTransitions] to provide animations between route changes.

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final GoRouter router = GoRouter(
    refreshListenable: getIt<NavigationNotifier>(),
    observers: [KeyboardDismissObserver()],
    navigatorKey: navigatorKey,
    initialLocation: Routes.splash,
    redirect: (context, state) =>
        getIt<NavigationRedirectService>().redirect(state.uri.path),

    /// Created manual route definitions, as an alternative to ’go_router_generator’.
    routes: [
      GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) =>
            CustomPageTransitions.buildFadeTransition(
              state,
              const SplashPage(),
            ),
      ),

      GoRoute(
        path: Routes.noConnection,
        pageBuilder: (context, state) =>
            CustomPageTransitions.buildFadeTransition(
              state,
              const NoConnectionOverlay(),
            ),
      ),

      GoRoute(
        path: Routes.signIn,
        pageBuilder: (context, state) =>
            CustomPageTransitions.buildFadeTransition(
              state,
              const SignInPage(),
            ),
      ),

      GoRoute(
        path: Routes.signUp,
        pageBuilder: (context, state) =>
            CustomPageTransitions.buildFadeTransition(
              state,
              const SignUpPage(),
            ),
      ),

      /// Bottom Navigation Bar Pages
      /// Built with [GoRouter]'s [StatefulShellRoute] functionality
      /// Handles preserved states for each tab page with optional deep linking
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithBottomNavBar(
            navigationShell: navigationShell,
            branches: const [HomePage(), ProfilePage()],
          );
        },

        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.home,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        path: Routes.uploadPhoto,
        pageBuilder: (context, state) =>
            CustomPageTransitions.buildFadeTransition(
              state,
              const UploadPhotoPage(),
            ),
      ),

      GoRoute(
        path: Routes.profileDetails,
        pageBuilder: (context, state) =>
            CustomPageTransitions.buildFadeTransition(
              state,
              const ProfileDetailsPage(),
            ),
      ),

      GoRoute(
        path: Routes.movieDetails,
        pageBuilder: (context, state) =>
            CustomPageTransitions.buildFadeTransition(
              state,
              MovieDetailsPage(movie: state.extra! as Movie),
            ),
      ),

      GoRoute(
        path: Routes.limitedOffers,
        pageBuilder: (context, state) {
          return ModalBottomSheetPage(
            builder: (context) => const LimitedOffersPage(),
          );
        },
      ),

      GoRoute(
        path: Routes.termsAndConditions,
        pageBuilder: (context, state) {
          return ModalBottomSheetPage(
            builder: (context) => const TermsAndConditionsPage(),
          );
        },
      ),
    ],
  );
}
