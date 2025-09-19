class NetworkException implements Exception {
  final String message;
  const NetworkException(this.message);
}

class ServerException implements Exception {
  final String message;
  const ServerException(this.message);
}

class StorageException implements Exception {
  final String message;
  const StorageException(this.message);
}

class ParsingException implements Exception {
  final String message;
  const ParsingException(this.message);
}

class UnauthorizedException implements Exception {
  final String message;
  const UnauthorizedException(this.message);
}

class NotFoundException implements Exception {
  final String message;
  const NotFoundException(this.message);
}

class NoConnectionException implements Exception {
  final String message;
  const NoConnectionException(this.message);
}

class UnexpectedException implements Exception {
  final String message;
  const UnexpectedException(this.message);
}

class CrashlyticsTestException implements Exception {
  final String? message;
  const CrashlyticsTestException({this.message});
}

class APIResponseException implements Exception {
  final int? code;
  final String? apiMessage;
  const APIResponseException({this.code, this.apiMessage});
}

class NetworkClientException implements Exception {
  final String message;
  final int? statusCode;
  final Map<String, dynamic>? info;
  const NetworkClientException(this.message, {this.statusCode, this.info});
}
