import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';

/// Abstract interface for [ProfileRepository]

abstract class ProfileRepository {
  Future<Either<Failure, User>> getUserProfile();
  Future<Either<Failure, List<Movie>>> getFavoriteMovies();
  Future<Either<Failure, User>> uploadUserPhoto({
    required String filePath,
  });
}
