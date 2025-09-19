part of '../utilities/utilities_library_imports.dart';

/// Provides a class-aware, DI-backed logger instance with global access without manual constructor injection.
/// Structures logs [LEVEL][ClassName][Message] formatting for consistent output.
extension GlobalLogHelper on Object {
  LoggerServiceHelper get logger =>
      LoggerServiceHelper(getIt<LoggerService>(), this);
}

/// Formats parameter map entries as strings for Firebase Crashlytics.
extension CrashlyticsInfoExtension on Map<String, Object>? {
  Iterable<Object> toCrashlyticsInfo() =>
      this?.entries.map((e) => '${e.key}: ${e.value}') ?? const [];
}

/// Converts log messages into safe event names for Crashlytics and Analytics
extension LoggerEventName on String {
  String toLoggerEventName() {
    final event = toLowerCase().replaceAll(RegExp(r'\s+'), '_');
    return event;
  }
}

/// Adds parameter info to the log messages if available
extension LoggerMessage on String {
  String withParams(Map<String, dynamic>? params) {
    if (params == null || params.isEmpty) return this;
    return '$this | params: $params';
  }
}
