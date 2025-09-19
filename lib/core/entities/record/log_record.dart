import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/core/services/logger/logger_service.dart';

part 'log_record.freezed.dart';

/// Immutable and type-safe Core-level Entity for [LoggerService]'s [LogRecord].

@freezed
abstract class LogRecord with _$LogRecord {
  const LogRecord._();

  const factory LogRecord({
    required String caller,
    required String message,
    Map<String, Object?>? params,
  }) = _LogRecord;

  String get formatted => params == null || params!.isEmpty
      ? '[$caller] $message'
      : '[$caller] $message | params: $params';
}
