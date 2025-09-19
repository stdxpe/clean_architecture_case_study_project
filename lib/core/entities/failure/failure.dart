import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// Immutable Core-level Domain Entity to represent app-wide [Failure].

@freezed
sealed class Failure with _$Failure {
  const factory Failure.network(String message) = NetworkFailure;
  const factory Failure.server(int code, String message) = ServerFailure;
  const factory Failure.storage(String message) = StorageFailure;
  const factory Failure.parsing(String message) = ParsingFailure;
  const factory Failure.unauthorized(String message) = UnauthorizedFailure;
  const factory Failure.noConnection(String message) = NoConnectionFailure;
  const factory Failure.notFound(String message) = NotFoundFailure;
  const factory Failure.unexpected(String message) = UnexpectedFailure;
}
