part of '../utilities/utilities_library_imports.dart';

/// [APP-WIDE GLOBAL VARIABLE]

abstract class ApiEndpoints {
  /// Hardcoded base url here for easy ’clone & run’ setup for GitHub repository.
  /// Instead of ’static String get baseUrl => ENV['API_BASE_URL']’ (from .env)
  static const String baseUrl = 'https://caseapi.servicelabs.tech/';

  static const String login = '/user/login';
  static const String register = '/user/register';
  static const String profile = '/user/profile';
  static const String uploadPhoto = '/user/upload_photo';
  static const String movies = '/movie/list';
  static const String favorites = '/movie/favorites';
  static const String favoriteWithId = '/movie/favorite';
}
