import 'package:dio/dio.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_client.dart';
import 'package:case_study_clean_architecture_project/core/services/network/auth_interceptor.dart';
import 'package:case_study_clean_architecture_project/core/models/http_response/http_response.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_connection_service.dart';

/// Concrete implementation of [NetworkClient] using [Dio].
/// Provides HTTP methods with automated [AuthInterceptor] integration and logging.

/// Exposes custom [HttpResponse] instead of [Dio]'s [Response] class.
/// Exposes custom [NetworkClientException] instead of [DioException].

class NetworkClientImplDio implements NetworkClient {
  final Dio _dio;
  final AuthInterceptor _authInterceptor;
  final NetworkConnectionService _connectionService;

  NetworkClientImplDio(
    this._dio,
    this._authInterceptor,
    this._connectionService,
  ) {
    _dio.options.baseUrl = ApiEndpoints.baseUrl;
    _dio.interceptors.add(_authInterceptor);
  }

  /// Performs a [GET] request with optional query parameters
  @override
  Future<HttpResponse> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return _httpRequest(
      httpMethod: HttpMethod.get,
      path: path,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  /// Performs a [POST] request with optional query parameters
  @override
  Future<HttpResponse> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return _httpRequest(
      httpMethod: HttpMethod.post,
      path: path,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  /// Performs a [PUT] request with optional query parameters
  @override
  Future<HttpResponse> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return _httpRequest(
      httpMethod: HttpMethod.put,
      path: path,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  /// Performs a [PATCH] request with optional query parameters
  @override
  Future<HttpResponse> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return _httpRequest(
      httpMethod: HttpMethod.patch,
      path: path,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  /// Performs a [DELETE] request with optional query parameters
  @override
  Future<HttpResponse> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return _httpRequest(
      httpMethod: HttpMethod.delete,
      path: path,
      data: data,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  /// Centralized request handler method for all HTTP methods
  /// Provides HTTP responses with unified logging and structured results
  Future<HttpResponse> _httpRequest({
    required HttpMethod httpMethod,
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    final method = httpMethod.name.toUpperCase();
    logger.i(Messages.network.request(method, path));

    try {
      /// UX Addition: [NavigationRedirectService] overrides below
      final isConnected = await _connectionService.validateCurrentConnection();
      if (!isConnected) {
        throw NoConnectionException(Messages.network.noConnection);
      }

      final response = await _dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method,
          headers: headers,
        ),
      );

      if (response.data is! Map<String, dynamic>) {
        logger.e(Messages.parsing.invalidFormat);
        throw ParsingException(Messages.parsing.invalidFormat);
      }

      logger.i(Messages.network.success(method, path));

      return HttpResponse(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
        headers: response.headers.map,
      );
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      final message = e.message ?? AppStrings.errors.networkError;
      final info = e.response?.data is Map<String, dynamic>
          ? e.response?.data as Map<String, dynamic>?
          : null;
      logger.e(Messages.network.error(method, path, message, statusCode));
      throw NetworkClientException(message, statusCode: statusCode, info: info);
    } catch (e) {
      logger.e(Messages.network.error(method, path, e.toString(), null));
      rethrow;
    }
  }
}
