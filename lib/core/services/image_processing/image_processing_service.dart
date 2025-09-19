import 'dart:io';
import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';

/// Abstract interface for [ImageProcessingService]

abstract class ImageProcessingService {
  Future<Either<Failure, String>> selectImage(MediaSource from);
  Future<Either<Failure, File>> convertImageToJpg(String path);
  Future<Either<Failure, File>> resizeImage(String path);
  Future<Either<Failure, File>> compressImage(String path);
  String formatImageName(String path, String extension, {String? label});
}
