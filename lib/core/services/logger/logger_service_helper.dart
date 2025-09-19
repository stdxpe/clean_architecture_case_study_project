import 'package:case_study_clean_architecture_project/core/services/logger/logger_service.dart';

class LoggerServiceHelper {
  final LoggerService _logger;
  final Object _caller;

  LoggerServiceHelper(this._logger, this._caller);

  void i(
    String message, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) => _logger.i(message, _caller, e: e, st: st, params: params);

  void d(
    String message, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) => _logger.d(message, _caller, e: e, st: st, params: params);

  void e(
    String message, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) => _logger.e(message, _caller, e: e, st: st, params: params);

  void w(
    String message, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) => _logger.w(message, _caller, e: e, st: st, params: params);

  void f(
    String message, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  }) => _logger.f(message, _caller, e: e, st: st, params: params);
}
