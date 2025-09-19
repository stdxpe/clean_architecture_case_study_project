part of '../utilities/utilities_library_imports.dart';

/// [APP WIDE GLOBAL VARIABLE]

/// Custom [TextStyle] Implementations for [ThemeData].

abstract class AppTextThemes {
  /// Named: ’title’ - 18px, 600
  /// Used in screen headers: "Welcome", "Upload Photos", "Movie Title"
  static final TextTheme textTheme = const TextTheme().copyWith(
    headlineMedium: TextStyle(
      fontFamily: AppConstants.fonts.euclid,
      fontSize: AppConstants.fontSizes.size18,
      fontWeight: FontWeight.w600,
      height: 1,
    ),

    /// Named: ’subtitle’ - 13px, 400
    /// Used in body descriptions: "Tempus varius...", card texts
    bodyMedium: TextStyle(
      fontFamily: AppConstants.fonts.euclid,
      fontSize: AppConstants.fontSizes.size13,
      fontWeight: FontWeight.w400,
      height: 1.25,
    ),

    /// Named: ’infoLight’ - 12px, 400
    /// Used in hintTexts, footers, ID subtexts
    labelSmall: TextStyle(
      fontFamily: AppConstants.fonts.euclid,
      fontSize: AppConstants.fontSizes.size12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.5,
    ),

    /// Named: ’infoBold’ - 13px, 700
    /// Used in: "Add Photo", "Favorite Movies", "See More"
    labelLarge: TextStyle(
      fontFamily: AppConstants.fonts.euclid,
      fontSize: AppConstants.fontSizes.size13,
      fontWeight: FontWeight.w700,
      height: 1,
    ),

    /// Named ’action’ - 15px, 500
    /// Used in buttons: "Sign In", "View All Tokens", AppBar titles
    titleMedium: TextStyle(
      fontFamily: AppConstants.fonts.euclid,
      fontSize: AppConstants.fontSizes.size15,
      fontWeight: FontWeight.w500,
      height: 1,
    ),

    /// Named ’montserrat’ - 25px, 900
    /// Used in token display: "300", "3375" in token cards
    displayLarge: TextStyle(
      fontFamily: AppConstants.fonts.montserrat,
      fontSize: AppConstants.fontSizes.size25,
      fontWeight: FontWeight.w900,
      height: 1.2,
    ),
  );
}
