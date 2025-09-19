import 'dart:io';
import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as image_processor;
import 'package:path/path.dart' as p;

import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/services/image_processing/image_processing_service.dart';

/// Concrete implementation of [ImageProcessingService]
/// Provides gallery/camera image picking, resizing, compression, and toJPG conversion.

class ImageProcessingServiceImpl implements ImageProcessingService {
  ImageProcessingServiceImpl(this._picker);

  final ImagePicker _picker;

  /// Selects a photo from gallery/camera and returns the file path or [Failure]
  @override
  Future<Either<Failure, String>> selectImage(MediaSource mediaSource) async {
    try {
      /// Created a separate enum without [ImagePicker] dependency.
      final source = switch (mediaSource) {
        MediaSource.camera => ImageSource.camera,
        MediaSource.gallery => ImageSource.gallery,
      };

      final pickedFile = await _picker.pickImage(source: source);

      final failureMessage = switch (mediaSource) {
        MediaSource.camera => Messages.storage.noPhotoCaptured,
        MediaSource.gallery => Messages.storage.noPhotoSelected,
      };

      if (pickedFile == null) {
        return left(Failure.storage(failureMessage));
      }
      return right(pickedFile.path);
    } catch (e) {
      return left(Failure.unexpected(e.toString()));
    }
  }

  /// Produces a JPG file from the source image or [Failure]
  @override
  Future<Either<Failure, File>> convertImageToJpg(String path) async {
    try {
      final file = File(path);
      if (!file.existsSync()) {
        return left(Failure.storage(Messages.storage.fileNotFound));
      }

      final bytes = await file.readAsBytes();
      final image = image_processor.decodeImage(bytes);
      if (image == null) {
        return left(Failure.parsing(Messages.storage.cannotDecodeImage));
      }

      final jpgBytes = Uint8List.fromList(image_processor.encodeJpg(image));
      final jpgFile = File(formatImageName(path, 'jpg'));
      await jpgFile.writeAsBytes(jpgBytes);

      return right(jpgFile);
    } catch (e) {
      return left(Failure.unexpected(e.toString()));
    }
  }

  /// Produces a resized image file with a standard width or [Failure]
  @override
  Future<Either<Failure, File>> resizeImage(String path) async {
    try {
      final file = File(path);

      if (!file.existsSync()) {
        return Left(Failure.storage(Messages.storage.fileNotFound));
      }

      final bytes = await file.readAsBytes();
      final image = image_processor.decodeImage(bytes);

      if (image == null) {
        return left(Failure.parsing(Messages.storage.cannotDecodeImage));
      }

      final resizedImage = image_processor.copyResize(image, width: 250);
      final resizedBytes = Uint8List.fromList(
        image_processor.encodeJpg(resizedImage),
      );

      final resizedFile = File(formatImageName(path, 'jpg', label: 'resized'));
      await resizedFile.writeAsBytes(resizedBytes);

      return right(resizedFile);
    } catch (e) {
      return left(Failure.unexpected(e.toString()));
    }
  }

  /// Produces a compressed image file with controlled quality or [Failure]
  @override
  Future<Either<Failure, File>> compressImage(String path) async {
    try {
      final file = File(path);
      if (!file.existsSync()) {
        return left(Failure.storage(Messages.storage.fileNotFound));
      }

      final bytes = await file.readAsBytes();
      final image = image_processor.decodeImage(bytes);
      if (image == null) {
        return left(Failure.parsing(Messages.storage.cannotDecodeImage));
      }

      final compressedBytes = Uint8List.fromList(
        image_processor.encodeJpg(image, quality: 60),
      );

      final compressedFile = File(
        formatImageName(path, 'jpg', label: 'compressed'),
      );
      await compressedFile.writeAsBytes(compressedBytes);

      return right(compressedFile);
    } catch (e) {
      return left(Failure.unexpected(e.toString()));
    }
  }

  /// Generates a unique and formatted file name for the image
  @override
  String formatImageName(String path, String extension, {String? label}) {
    final dir = p.dirname(path);
    final id = const Uuid().v4().substring(0, 25);
    return p.join(dir, '$id${label ?? ""}.$extension');
  }
}
