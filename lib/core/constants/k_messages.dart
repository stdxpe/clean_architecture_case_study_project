part of '../utilities/utilities_library_imports.dart';

/// [APP WIDE GLOBAL VARIABLE]

/// Matches with [Failure] types to ensure consistency on log messages.
/// Subcategories: Storage, Network, Parsing, Auth, Home, Profile, UI, Core.

abstract class Messages {
  Messages._();

  /// Log Message Subcategories
  static _Storage storage = _Storage._();
  static _Network network = _Network._();
  static _Parsing parsing = _Parsing._();
  static _Profile profile = _Profile._();
  static _Home home = _Home._();
  static _Auth auth = _Auth._();
  static _Core core = _Core._();
  static _UI ui = _UI._();

  static const level = 'main.dart';
}

/// Storage Related Log Messages
class _Storage {
  _Storage._();

  String envKeyMissing = 'Environment variable key is missing or empty.';
  String tokenSaved = 'Access token saved successfully';
  String tokenRead = 'Access token read successfully';
  String tokenMissing = 'Access token missing';
  String tokenFound = 'Access token found';
  String tokenDeleted = 'Access token deleted';
  String storageCleared = 'Storage cleared';
  String tokenNotFound = 'Access token not found';
  String readFailed = 'Failed to read token';
  String saveFailed = 'Failed to save token';
  String deleteFailed = 'Failed to delete token';
  String noPhotoSelected = 'No photo selected!';
  String noPhotoCaptured = 'No photo captured!';
  String fileNotFound = 'File not found';
  String cannotDecodeImage = 'Cannot decode image';
  String cannotResizeImage = 'Failed to resize image';
  String cannotCompressImage = 'Failed to compress image';
  String cleared = 'Storage cleared';
  String clearFailed = 'Failed to clear storage';
  String keySaved = 'Key saved successfully';
  String keySaveFailed = 'Failed to save key';
  String keyRead = 'Key read successfully';
  String keyReadFailed = 'Failed to read key';
  String keyNotFound = 'Key not found';
  String keyExistsCheck = 'Key existence checked';
  String keyExistsCheckFailed = 'Failed to check key existence';
  String keyDeleted = 'Key deleted successfully';
  String keyDeleteFailed = 'Failed to delete key';

  String Function(String message) failure = (message) =>
      'Storage failure: $message';
}

/// Network Related Log Messages
class _Network {
  _Network._();

  String notFound = 'Resource not found';
  String serverError = 'Server error';
  String noConnection = 'No internet connection!';
  String Function(String method, String endpoint) request =
      (method, endpoint) => 'Network request: $method → $endpoint';
  String Function(String method, String endpoint) success =
      (method, endpoint) => 'Network request succeeded: $method → $endpoint';
  String Function(String method, String endpoint, String error, int? code)
  error = (method, endpoint, error, code) =>
      'Network request failed: $method → $endpoint - $error (code: $code)';
  String Function(String method, String endpoint) timeout =
      (method, endpoint) => 'Network timeout: $method → $endpoint';
  String Function(String method, String endpoint) cancelled =
      (method, endpoint) => 'Network request cancelled: $method → $endpoint';
  String tokenInjectionFailed =
      'Failed to inject access token into request headers';
  String tokenInjectionSuccess =
      'Successfully injected access token into request headers';
}

/// Parsing/DTO Log Related Messages
class _Parsing {
  _Parsing._();

  String invalidFormat = 'Unexpected response format';
  String Function(String message) error = (message) =>
      'Failed to parse response: $message';
}

/// Auth Feature Log Messages
class _Auth {
  _Auth._();

  String failed = 'Authentication failed';
  String checkFailed = 'Authentication status check failed';
  String tokenRefreshed = 'Token refreshed successfully';
  String signedOut = 'User logged out';
  String signOutFailed = 'Sign out progress failed';
  String unauthorized = 'Unauthorized';
  String Function(String email) response = (message) => 'Response: $message';
  String Function(String email) signInStarted = (email) =>
      'Sign-in started for: $email';
  String Function(String email) signUpStarted = (email) =>
      'Sign-up started for: $email';
  String Function(String email) signInSuccess = (email) =>
      'Sign-in successful for: $email';
  String Function(String email) signUpSuccess = (email) =>
      'Sign-up successful for: $email';
  String Function(String user) signInFailed = (user) =>
      'Sign-in failed for: $user';
  String Function(String user, String message) signUpFailed = (user, message) =>
      'Sign-up failed for: $user : $message';
  String Function(String message) failure = (message) =>
      'Auth failure: $message';
  String Function(bool status) status = (status) => 'User Auth Status: $status';
}

/// Profile Feature Log Messages
class _Profile {
  _Profile._();

  String fetched = 'Profile successfully fetched';
  String favoritesSuccess = 'Favorites successfully fetched';
  String Function(String error) photoUploadFailed = (error) =>
      'Profile photo upload failed: $error';
  String Function(String userId) photoUploadSuccess = (userId) =>
      'Profile photo uploaded for user: $userId';
  String Function(String error) photoSelectFailed = (error) =>
      'Profile photo upload failed: $error';
  String Function(String message) failure = (message) =>
      'Profile failure: $message';
  String Function(String message) fetchFailed = (message) =>
      'Profile fetch failed: $message';
  String Function(String message) favoritesFetchFailed = (message) =>
      'Favorites fetch failed: $message';
  String Function(Preferences preferences) preferencesChanged = (preferences) =>
      'User Preferences Changes: $preferences';
}

/// Movie Feature Log Messages
class _Home {
  _Home._();

  String Function({required int page}) paginationSuccess =
      ({required int page}) => 'Movie pagination completed: Page $page';
  String Function(String error) paginationFailed = (e) =>
      'Movie pagination failed: $e';
  String Function(String title) movieLoaded = (title) => 'Movie loaded: $title';
  String Function(String movieId) favoriteToggled = (movieId) =>
      'Favorite toggled: $movieId';
  String Function(String movieId, String error) toggleFailed =
      (movieId, error) => 'Failed to toggle $movieId : $error';
  String Function(String movieTitle) loadFailed = (error) =>
      'Failed to load movies: $error';
  String Function(String message) failure = (message) =>
      'Movie failure: $message';
}

/// UI Log Messages
class _UI {
  _UI._();

  String Function(int code) bloc = (code) => 'Bloc-HashCode: $code';
  String Function(String widgetName) widgetMounted = (widgetName) =>
      'Widget mounted: $widgetName';
  String Function(String widgetName) widgetDisposed = (widgetName) =>
      'Widget disposed: $widgetName';
}

/// Core and App-Level Log Messages
class _Core {
  _Core._();

  String asyncZoneError = 'Async/Zone Error';
  String uncaughtAsyncZoneError = 'Uncaught Async/Zone Error';
  String unknownError = 'Unknown error';
  String pd = 'PlatformDispatcher Error';
  String error = 'Flutter Error';
  String platform = 'Firebase has not been configured for this platform.';
  String web = 'Firebase has not been configured for web.';
  String externalLinkFail = 'Failed to open link';
  String Function(String route) navigation = (route) =>
      'Current Navigation Route: $route';
  String Function(String state) lifecycle = (state) =>
      'App lifecycle state: $state';
  String Function(String registration) di = (registration) =>
      'DI registered: $registration';
  String Function(String message) unknown = (message) =>
      'Unknown core error: $message';
  String Function(String component) disposed = (component) =>
      '$component Disposed';
}
