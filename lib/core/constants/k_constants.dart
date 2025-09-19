part of '../utilities/utilities_library_imports.dart';

/// [APP-WIDE GLOBAL VARIABLE]

/// Usage example:  `AppConstants.paddings.screen`
abstract class AppConstants {
  static const paddings = _AppPaddings();
  static const spacings = _AppSpacings();
  static const radius = _AppRadius();
  static const sizes = _AppSizes();
  static const blurs = _AppBlurs();
  static const fontSizes = _FontSizes();
  static const fonts = _Fonts();
  static const paths = _Paths();
  static const links = _Links();

  static const String appTitle = 'SinFlix';

  /// Screen width and height of original Figma design.
  static const double rawDesignWidth = 402;
  static const double rawDesignHeight = 844;
}

class _AppPaddings {
  const _AppPaddings();

  double get main => 39;
  double get textFieldV => 17.5.h;
  double get textFieldLeft => 25.w;
  double get textFieldRight => 30.w;
  double get textFieldTextH => 12.w;
  double get inlineIndent => 7.5.w;
  double get buttonH => 17.16.w;
  double get buttonV => 17.16.h;
  double get limitedOfferButtonV => 7.h;
  double get limitedOfferButtonH => 7.w;
  double get addPhotoButtonV => 10.h;
  double get addPhotoButtonH => 19.w;
  double get appBarW => 20.w;
  double get appBarButtonRight => 10.w;
  double get uploadPhotoPage => 26.w;
  double get uploadPhotoPageTop => 17.32.h;
  double get favoriteButtonV => 23.85.h;
  double get favoriteButtonH => 12.59.w;
  double get favoriteButtonRight => 16.49.w;
  double get favoriteButtonBottom => 100.h;
  double get cardMovieDescH => 34.5.w;
  double get cardMovieDescV => 15.w;
  double get loadingMoreIndicator => 150.h;
  double get scrollToTopChip => 45.h;
  double get navBarH => 25.w;
  double get navBarV => 10.h;
  double get rewardCardHorizontal => 30.w;
  double get rewardCardBottom => 14.h;
  double get rewardCardTop => 22.h;
  double get limitedOffersPage => 17.w;
  double get navButtonBottom => 20.h;
  double get navButtonTop => 13.72.h;
  double get navButtonH => 16.w;
  double get profilePageH => 40.h;
  double get profilePageW => 20.w;
  double get profileCardH => 10.h;
  double get profileCardV => 10.w;
  double get profileListileH => 5.h;
  double get profileListileW => 40.w;
  double get profileListileInsideV => 10.h;
  double get profileListileInsideH => 20.w;
  double get profileInfoCardRight => 26.15.w;
  double get profileInfoCardLeft => 35.12.w;
  double get appBarL => 24.95 * 2.w;
  double get appBarR => 26.15.w;
  double get appBarBottom => 18.32.h;
  double get detailsW => 10.w;
  double get detailsWideW => 12.w;
  double get tokenChipVertical => 3.5;
  double get tokenChipHorizontal => 15;
  double get tokenCardTopY => -1.42;
  double get tokenCardBottomY => 1.3;
  double get tokenSectionHorizontal => 1.3;
  double get tokenSectionVertical => 1.3;
}

class _AppRadius {
  const _AppRadius();

  double get textfield => 18.r;
  double get navBarItem => 20.r;
  double get movieCard => 8.r;
  double get tokenCard => 16.r;
  double get tokenChip => 25.r;
  double get percentCard => 24.r;
  double get bottomSheet => 32.r;
  double get bottomSheetGlass => 24.r;
  double get plusButton => 31.r;
  double get favoriteButton => 82.r;
  double get limitedOfferButton => 53.r;
  double get addPhotoButton => 8.r;
  double get movieChip => 15.r;
  double get profileCard => 50.r;
  double get circular => 100.r;
}

class _AppSizes {
  const _AppSizes();

  double get iconPrefix => 17.h;
  double get iconSuffix => 17.h;
  double get iconFavorite => 24.h;
  double get iconLogo => 40.h;
  double get iconNoMoviesYet => 45.h;
  double get navBarIconH => 23.33.h;
  double get iconSocialH => 20.h;
  double get iconPlusH => 26.02;
  double get iconLeftArrowH => 12.05.h;
  double get backButton => 44.34.w;
  double get lottieSplash => 200.h;
  double get loadingOverlay => 100.h;
  double get lottieLike => 250.h;
  double get loadingWidget => 25.h;
  double get borderWidth => 1.25.w;
  double get glowingCircleDiameter => 217.39;
  double get socialButtonHeight => 60.h;
  double get plusButtonHeight => 168.95;
  double get loadingBarH => 50.h;
  double get buttonH => 53.31.h;
  double get errorH => 38.h;
  Offset get errorOffset => const Offset(0, -0.2);
  double get appBarHeight => 70.h;
  double get bottomSheetRatioW => 1;
  double get bottomSheetRatioH => 0.77;
  double get loadingMoreIndicator => 30.h;
  double get movieOverlayGradient => 120.h;
  double get movieDetailsOverlayGradient => 240.h;
  double get profilePicH => 61.91.h;
  double get profilePicMainH => 70.h;
  double get selectedProfilePicHeight => 120.h;
  double get maxOverscroll => 0.01;
  double get gridViewAspectRatio => 0.58;
  double get movieCardAspectRatio => 0.71;
  double get rewardCardHeight => 55;
  double get noConnectionIconH => 130.h;
}

class _AppSpacings {
  const _AppSpacings();

  double get textFieldsBtwn => 13.63.h;
  double get gridItemsHBtwn => 15.66.w;
  double get gridItemsVBtwn => 16.21.h;
  double get favMoviesTitleTop => 14.485.h;
  double get favMoviesTitleBottom => 23.86.h;

  double get space2 => 2;
  double get space4 => 4;
  double get space5 => 4;
  double get space6 => 6;
  double get space7 => 7;
  double get space8 => 8;
  double get space9 => 9;
  double get space10 => 10;
  double get space12 => 12;
  double get space13 => 13;
  double get space14 => 14;
  double get space15 => 15;
  double get space16 => 16;
  double get space17 => 17.43;
  double get space18 => 18;
  double get space20 => 20;
  double get space22 => 22;
  double get space24 => 24;
  double get space25 => 25;
  double get space27 => 27;
  double get space30 => 30;
  double get space32 => 32;
  double get space35 => 35;
  double get space37 => 37;
  double get space40 => 40;
  double get space45 => 45;
  double get space47 => 47.65;
  double get space50 => 50;
  double get space100 => 100;
  double get space120 => 120;
  double get space373 => 373;
}

class _AppBlurs {
  const _AppBlurs();

  double get glowingCircleBottomBlur => 125;
  double get glowingCircleTopBlur => 108.125;
  double get innerShadowTokenBlur => 15;
  double get innerShadowBlur => 5;
  double get spreadRadius => 35;
  double get blurRadius => 50;
  double get sigmaX => 15;
  double get sigmaY => 15;
}

class _FontSizes {
  const _FontSizes();

  double get size9 => 9.sp;
  double get size10 => 10.sp;
  double get size12 => 12.sp;
  double get size13 => 13.sp;
  double get size14 => 14.sp;
  double get size15 => 15.sp;
  double get size16 => 16.sp;
  double get size17 => 17.sp;
  double get size18 => 18.sp;
  double get size20 => 20.sp;
  double get size25 => 25.sp;
  double get size30 => 30.sp;
  double get size35 => 35.sp;
}

class _Fonts {
  const _Fonts();

  String get euclid => 'EuclidCircularA';
  String get montserrat => 'Montserrat';
}

class _Paths {
  const _Paths();

  String get env => '.env';
  String get localeKey => 'locale';
  String get hiveBox => 'appSettings';
  String get locale => 'assets/translations';
  String get notificationsKey => 'notifications';
  String get rememberMeKey => 'remember_me';
  String get themeModeKey => 'theme_mode';
  String get accessTokenKey => 'ACCESS_TOKEN';
}

class _Links {
  const _Links();

  String get github => 'github.com';
  String get projectPath => '/stdxpe/clean_architecture_case_study_project';
}
