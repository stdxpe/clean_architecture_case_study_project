part of 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// [APP-WIDE GLOBAL VARIABLE]

abstract class Routes {
  /// Page Routes
  static const splash = '/splash';
  static const signIn = '/signin';
  static const signUp = '/signup';
  static const uploadPhoto = '/upload_photo';
  static const movieDetails = '/movie_details';
  static const profileDetails = '/profile_details';
  static const forgotPassword = '/forgot_password';
  static const noConnection = '/no_connection';

  /// BottomNavigationBar Tab Routes
  static const home = '/home';
  static const profile = '/profile';

  /// BottomSheet Routes
  static const limitedOffers = '/limited_offers';
  static const termsAndConditions = '/terms_and_conditions';
}
