import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_client.dart';

part 'http_response.freezed.dart';
part 'http_response.g.dart';

/// Immutable and type-safe Core-level model for [NetworkClient]'s [HttpResponse].

@freezed
sealed class HttpResponse with _$HttpResponse {
  const factory HttpResponse({
    int? statusCode,
    String? statusMessage,
    dynamic data,
    Map<String, dynamic>? extra,
    Map<String, List<String>>? headers,
  }) = _HttpResponse;

  factory HttpResponse.fromJson(Map<String, dynamic> json) =>
      _$HttpResponseFromJson(json);
}
