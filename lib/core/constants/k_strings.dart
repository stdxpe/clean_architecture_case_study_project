part of '../utilities/utilities_library_imports.dart';

/// [APP WIDE GLOBAL VARIABLE]

/// Implemented into Language Localization System via [EasyLocalization] JSON's.
/// Usage example:  `AppStrings.errors.photoServerUploadFail`

abstract class AppStrings {
  static String get appTitle => 'appTitle'.tr();

  static String get homeButton => 'homeButton'.tr();
  static String get profileButton => 'profileButton'.tr();

  static String get signInTitle => 'signInTitle'.tr();
  static String get signInSubtitle => 'signInSubtitle'.tr();
  static String get signUpButton => 'signUpButton'.tr();
  static String get signUpTitle => 'signUpTitle'.tr();
  static String get signUpSubtitle => 'signUpSubtitle'.tr();
  static String get signOutButton => 'signOutButton'.tr();
  static String get signInButton => 'signInButton'.tr();
  static String get forgotPassword => 'forgotPassword'.tr();
  static String get dontHaveAnAccount => 'dontHaveAnAccount'.tr();
  static String get dontHaveAnAccountButton => 'dontHaveAnAccountButton'.tr();
  static String get alreadyHaveAnAccount => 'alreadyHaveAnAccount'.tr();
  static String get alreadyHaveAnAccountButton =>
      'alreadyHaveAnAccountButton'.tr();

  static String get hintEmail => 'hintEmail'.tr();
  static String get hintPassword => 'hintPassword'.tr();
  static String get hintConfirmPassword => 'hintConfirmPassword'.tr();
  static String get hintFullName => 'hintFullName'.tr();
  static String get textEllipsisDots => 'textEllipsisDots'.tr();
  static String get seeMore => 'seeMore'.tr();
  static String get hide => 'hide'.tr();
  static String get empty => '';
  static String get termsAndConditions => 'termsAndConditions'.tr();
  static String get termsAndConditionsFirst => 'termsAndConditionsFirst'.tr();
  static String get termsAndConditionsSecond => 'termsAndConditionsSecond'.tr();
  static String get termsAndConditionsThird => 'termsAndConditionsThird'.tr();
  static String get profile => 'profile'.tr();
  static String get profileDetails => 'profileDetails'.tr();
  static String get lastSignedIn => 'lastSignedIn'.tr();
  static String get addPhotoButton => 'addPhotoButton'.tr();
  static String get uploadPhotosTitle => 'uploadPhotosTitle'.tr();
  static String get uploadPhotosSubtitle => 'uploadPhotosSubtitle'.tr();
  static String get continueButton => 'continueButton'.tr();
  static String get moreButton => 'moreButton'.tr();
  static String get favoriteMovies => 'favoriteMovies'.tr();
  static String get noFavoriteMoviesYet => 'noFavoriteMoviesYet'.tr();
  static String get limitedOffer => 'limitedOffer'.tr();
  static String get limitedOfferSubtitle => 'limitedOfferSubtitle'.tr();
  static String get bonus => 'bonus'.tr();
  static String get premium => 'premium'.tr();
  static String get moreMatches => 'moreMatches'.tr();
  static String get boostProfile => 'boostProfile'.tr();
  static String get moreLikes => 'moreLikes'.tr();
  static String get tokenPacksTitle => 'tokenPackTitle'.tr();
  static String get tokenButton => 'tokenButton'.tr();
  static String get token => 'token'.tr();
  static String get perWeek => 'perWeek'.tr();

  static String get termsAndConditionsTitle => 'termsAndConditionsTitle'.tr();
  static String get termsAndConditionsMainText =>
      'termsAndConditionsMainText'.tr();
  static String get termsAndConditionsClosingText =>
      'termsAndConditionsClosingText'.tr();
  static String get termsAndConditionsButton => 'termsAndConditionsButton'.tr();
  static String get scrollTop => 'scrollTop'.tr();

  static String get movieDetailsCast => 'movieDetailsCast'.tr();
  static String get movieDetailsAwards => 'movieDetailsAwards'.tr();
  static String get movieDetailsGenre => 'movieDetailsGenre'.tr();
  static String get movieDetailsLanguage => 'movieDetailsLanguage'.tr();
  static String get movieDetailsDirector => 'movieDetailsDirector'.tr();
  static String get movieDetailsScreenplay => 'movieDetailsScreenplay'.tr();

  static String get preferencesFavoriteMovies =>
      'preferencesFavoriteMovies'.tr();
  static String get preferencesChangePassword =>
      'preferencesChangePassword'.tr();
  static String get preferencesLanguage => 'preferencesLanguage'.tr();
  static String get preferencesDarkMode => 'preferencesDarkMode'.tr();
  static String get preferencesNotifications => 'preferencesNotifications'.tr();
  static String get preferencesRememberMe => 'preferencesRememberMe'.tr();
  static String get preferencesTermsAndConditions =>
      'preferencesTermsAndConditions'.tr();
  static String get preferencesCrashlyticsTest =>
      'preferencesCrashlyticsTest'.tr();
  static String get preferencesDeveloper => 'preferencesDeveloper'.tr();
  static String get noInternetConnection => 'noInternetConnection'.tr();
  static String get noInternetConnectionDetails =>
      'noInternetConnectionDetails'.tr();
  static String get invalidEmail => 'invalidEmail'.tr();
  static String get emptyEmail => 'emptyEmail'.tr();
  static String get emptyName => 'emptyName'.tr();
  static String get emptyPassword => 'emptyPassword'.tr();
  static String get invalidPassword => 'invalidPassword'.tr();
  static String get noMatchingPasswords => 'noMatchingPasswords'.tr();
  static String get notificationsEnabled => 'notificationsEnabled'.tr();
  static String get localeEnText => 'English  >  ';
  static String get localeTrText => 'Türkçe  >  ';

  static final errors = _ErrorStrings();
}

class _ErrorStrings {
  String get networkError => 'Please check your internet connection.';
  String get noConnection =>
      'No internet connection.\nPlease reconnect to continue.';
  String get serverError =>
      'Something went wrong on server.\nPlease try again later.';
  String get parsingError => 'Unexpected response format from server.';
  String get unexpectedError => 'Something went wrong.\nPlease try again.';
  String get unauthorized => 'Unauthorized. Please try again to continue';
  String get notFound => 'No results found.';
  String get invalidCredentials => 'Invalid credentials';
  String get connectionTimeout => 'Request timed out. Check your connection.';
  String get offlineModeMessage =>
      'You are offline. Some features may be unavailable.';
  String get invalidCredentials400 => 'invalidCredentials400'.tr();
  String get invalidInput => 'invalidInput'.tr();
  String get uploadPhotoInvalidFormat => 'uploadPhotoInvalidFormat'.tr();
  String get unauthorized401 => 'unauthorized401'.tr();
  String get movieNotFound404 => 'movieNotFound404'.tr();
  String get unknown => 'unknown'.tr();
  String get loginSuccessNoToken => 'loginSuccessNoToken'.tr();
  String get registerSuccessNoToken => 'registerSuccessNoToken'.tr();
  String get loginFailedWithCode => 'loginFailedWithCode'.tr();
  String get loginFailedNoToken => 'loginFailedNoToken'.tr();
  String get registerFailedWithCode => 'registerFailedWithCode'.tr();
  String get profileFail => 'profileFail'.tr();
  String get photoServerUploadFail => 'photoServerUploadFail'.tr();
  String get photoUploadFail => 'photoUploadFail'.tr();
  String get photoPickFail => 'photoPickFail'.tr();
  String get photoUploadSuccess => 'photoUploadSuccess'.tr();
  String get photoUploadWarning => 'photoUploadWarning'.tr();
  String get emailEmpty => 'emailEmpty'.tr();
  String get emailInvalid => 'emailInvalid'.tr();
  String get passwordEmpty => 'passwordEmpty'.tr();
  String get passwordTooShort => 'passwordTooShort'.tr();
  String get nameEmpty => 'nameEmpty'.tr();
  String get nameTooShort => 'nameTooShort'.tr();
  String get confirmPasswordEmpty => 'confirmPasswordEmpty'.tr();
  String get passwordsNotMatch => 'passwordsNotMatch'.tr();
}
