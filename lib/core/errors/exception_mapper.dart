import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

abstract class ExceptionMapper {
  static Failure mapToFailure(Object e) {
    switch (e) {
      case StorageException(:final message):
        return Failure.storage(message);

      case ParsingException(:final message):
        return Failure.parsing(message);

      case UnauthorizedException(:final message):
        return Failure.unauthorized(message);

      case NotFoundException(:final message):
        return Failure.notFound(message);

      case NoConnectionException(:final message):
        return Failure.noConnection(message);

      case NetworkException(:final message):
        return Failure.network(message);

      case NetworkClientException(:final message):
        if (e.statusCode == null) return Failure.noConnection(message);
        return Failure.network(message);

      case APIResponseException(:final code, apiMessage: final apiMessage):
        final message = apiMessage ?? AppStrings.errors.unexpectedError;
        return Failure.server(code ?? 0, message);

      case UnexpectedException(:final message):
        return Failure.unexpected(message);

      default:
        if (e is Failure) return e;
        return Failure.unexpected(AppStrings.errors.unexpectedError);
    }
  }
}
