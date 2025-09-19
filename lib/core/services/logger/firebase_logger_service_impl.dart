import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/entities/record/log_record.dart';
import 'package:case_study_clean_architecture_project/core/services/logger/logger_service.dart';

/// Concrete implementation of [LoggerService].
/// Centralizes logs for development and production environments.
/// Handles all logging tasks with [Crashlytics] and [Analytics] integration.

class FirebaseLoggerServiceImpl implements LoggerService {
  final FirebaseCrashlytics _crashlytics;
  final FirebaseAnalytics _analytics;

  FirebaseLoggerServiceImpl(this._crashlytics, this._analytics);

  /// Logs informational messages and sends to Analytics
  @override
  void i(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) {
    _logRecord(message, caller, params: params, level: LogLevel.info.name);
    _analytics.logEvent(name: message.toLoggerEventName(), parameters: params);
  }

  /// Logs debug messages for development only
  @override
  void d(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) {
    _logRecord(message, caller, params: params, level: LogLevel.debug.name);
  }

  /// Logs error messages, and sends to Crashlytics and Analytics
  @override
  void e(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) {
    _logRecord(message, caller, params: params, level: LogLevel.error.name);
    _analytics.logEvent(name: message.toLoggerEventName(), parameters: params);
    _crashlytics.recordError(
      e ?? Exception(message),
      st,
      reason: message,
      information: params.toCrashlyticsInfo(),
    );
  }

  /// Logs warning messages, and sends to Crashlytics and Analytics
  @override
  void w(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) {
    _logRecord(message, caller, params: params, level: LogLevel.warning.name);
    _analytics.logEvent(name: message.toLoggerEventName(), parameters: params);
    _crashlytics.log(message);
  }

  /// Logs fatal errors, marks them fatal in Crashlytics, and sends to Analytics
  @override
  void f(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) {
    _logRecord(message, caller, params: params, level: LogLevel.fatal.name);
    _analytics.logEvent(name: message.toLoggerEventName(), parameters: params);
    _crashlytics.recordError(
      e ?? Exception(message),
      st,
      reason: message,
      fatal: true,
      information: params.toCrashlyticsInfo(),
    );
  }

  /// Helper method to log class-aware messages in a structured format.
  void _logRecord(
    String message,
    Object caller, {
    required String level,
    Map<String, Object>? params,
  }) {
    final name = caller.getClassName;
    final rec = LogRecord(caller: name, message: message, params: params);
    if (kDebugMode) log(rec.formatted, name: level.toUpperCase());
  }
}
