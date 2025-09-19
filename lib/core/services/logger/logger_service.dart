/// Abstract interface for development and production environment logging tasks

abstract class LoggerService {
  /// [LOGINFO] : Informational Logs
  void i(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  });

  /// [LOGDEBUG] : Debug Logs
  void d(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  });

  /// [LOGERROR] : Error Logs
  void e(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  });

  /// [LOGWARNING] : Warning Logs
  void w(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  });

  /// [LOGFATAL] : Fatal or Critical Logs
  void f(
    String message,
    Object caller, {
    Object? e,
    StackTrace? st,
    Map<String, Object>? params,
  });
}
