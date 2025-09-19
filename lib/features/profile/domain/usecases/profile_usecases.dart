import 'dart:io';

import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/user/user.dart';
import 'package:case_study_clean_architecture_project/core/entities/movie/movie.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/extensions/transform_extensions.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/repositories/profile_repository.dart';
import 'package:case_study_clean_architecture_project/core/services/image_processing/image_processing_service.dart';

/// Created as a UX-Addition or a placeholder for future business logic (while most of the operations delegated to repository).
/// Groups multiple use cases in a single class instead of separate files to simplify structure.
/// Result ’Folding’ of Either<Failure, T> is intentionally left to the Bloc to update the UI state.

class ProfileUseCases {
  final ProfileRepository _repository;
  final ImageProcessingService _imageService;

  ProfileUseCases(this._repository, this._imageService);

  Future<Either<Failure, User>> getUserProfile() {
    return _repository.getUserProfile();
  }

  /// Chains image processing steps and only continues if all succeed
  /// Pick → Convert → Resize → Compress
  Future<Either<Failure, File>> selectUserPhoto(MediaSource source) async {
    return _imageService
        .selectImage(source)
        .chain((path) => _imageService.convertImageToJpg(path))
        .chain((file) => _imageService.resizeImage(file.path))
        .chain((file) => _imageService.compressImage(file.path));
  }

  Future<Either<Failure, User>> uploadUserPhoto(String filePath) async {
    return _repository.uploadUserPhoto(filePath: filePath);
  }

  Future<Either<Failure, List<Movie>>> getFavoriteMovies() {
    return _repository.getFavoriteMovies();
  }
}
