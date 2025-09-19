import 'package:easy_localization/easy_localization.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/errors/exception_mapper.dart';
import 'package:case_study_clean_architecture_project/core/models/response_info_dto/response_info_dto.dart';

extension ExceptionToFailureExtension on Object {
  Failure toFailure() => ExceptionMapper.mapToFailure(this);
}

/// Throws [APIResponseException] if (internal) response code is not Success
extension APIStatusCodeCheckExtension on ResponseInfoDto {
  void throwIfNotSuccess() => switch (code) {
    200 || 201 || 202 => null, // Returns if Success
    // OPTIONAL MAPPERS (If necessary in future)
    // 401 => throw UnauthorizedException(Messages.auth.unauthorized),
    // 403 => throw ForbiddenException(Messages.client.forbidden),
    // 404 => throw NotFoundException(Messages.network.notFound),
    // 500 => throw ServerException(Messages.network.serverError),

    // DEFAULT: Throws custom APIResponseException
    _ => throw APIResponseException(code: code, apiMessage: message),
  };
}

extension FailureToUIMessageExtension on Failure {
  String toUIMessage() {
    return when(
      network: (message) => message,
      parsing: (String message) => message,
      storage: (String message) => message,
      server: (code, message) => message.toFriendlyErrorMessage(),
      unauthorized: (message) => message,
      notFound: (message) => message,
      unexpected: (message) => message,
      noConnection: (message) => message,
    );
  }
}

/// Usage example:  `backendError.toFriendlyErrorMessage()`
/// 'INVALID_CREDENTIALS'  →  'Invalid Credentials'
extension BackendErrorMessageExtension on String {
  String toFriendlyErrorMessage() {
    final withSpaces = replaceAll('_', ' ').toLowerCase();
    final capitalizedWords = withSpaces
        .split(' ')
        .map((word) {
          if (word.isEmpty) return word;
          return word[0].toUpperCase() + word.substring(1);
        })
        .join(' ');
    return capitalizedWords.tr();
  }
}
