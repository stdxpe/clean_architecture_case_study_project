import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/features/auth/domain/repositories/auth_repository.dart';

/// Created as a UX-Addition or a placeholder for future business logic.
/// Groups multiple use cases in a single class instead of separate files to simplify structure.
/// Result ’Folding’ of Either<Failure, T> is intentionally left to the Bloc to update the UI state.

class AuthUseCases {
  AuthUseCases(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, User>> signIn({
    required String email,
    required String password,
  }) {
    return _repository.signIn(email: email, password: password);
  }

  Future<Either<Failure, User>> signUp({
    required String name,
    required String email,
    required String password,
  }) {
    return _repository.signUp(name: name, email: email, password: password);
  }

  Future<Either<Failure, Unit>> signOut() {
    return _repository.signOut();
  }

  Future<Either<Failure, bool>> isAuthenticated() {
    return _repository.isAuthenticated();
  }
}
