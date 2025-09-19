import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_client.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/models/profile_response_dto/profile_response_dto.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/models/favorites_response_dto/favorites_response_dto.dart';

/// Concrete implementation of [ProfileRemoteDataSource].
/// Performs API requests, and response serialization/parsing with logs.

/// Functional error handling (fpdart, [Either], fold) is intentionally avoided here.
/// Throws custom raw [Exception]'s, instead of Domain-level [Failure] objects.

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl(this._client);

  final NetworkClient _client;

  @override
  Future<ProfileResponseDto> getUserProfile() async {
    const endpoint = ApiEndpoints.profile;
    try {
      final response = await _client.get(endpoint);

      if (response.data is! Map<String, dynamic>) {
        logger.e(Messages.parsing.invalidFormat);
        throw ParsingException(Messages.parsing.invalidFormat);
      }

      final data = response.data as Map<String, dynamic>;
      final profileResponseDto = ProfileResponseDto.fromJson(data);

      profileResponseDto.info.throwIfNotSuccess();

      logger.i(Messages.profile.fetched);

      return profileResponseDto;
    } catch (e) {
      logger.e(Messages.profile.fetchFailed(e.toString()));
      rethrow;
    }
  }

  @override
  Future<ProfileResponseDto> uploadUserPhoto({
    required String filePath,
  }) async {
    const endpoint = ApiEndpoints.uploadPhoto;
    try {
      final file = await MultipartFile.fromFile(filePath);
      final formData = FormData.fromMap({'file': file});

      final response = await _client.post(endpoint, data: formData);

      if (response.data is! Map<String, dynamic>) {
        logger.e(Messages.parsing.invalidFormat);
        throw ParsingException(Messages.parsing.invalidFormat);
      }
      final data = response.data as Map<String, dynamic>;
      final profileResponseDto = ProfileResponseDto.fromJson(data);

      profileResponseDto.info.throwIfNotSuccess();

      final userId = profileResponseDto.profile.id;
      logger.i(Messages.profile.photoUploadSuccess(userId));

      return profileResponseDto;
    } catch (e) {
      logger.e(Messages.profile.photoUploadFailed(e.toString()));
      rethrow;
    }
  }

  @override
  Future<FavoritesResponseDto> getFavoriteMovies() async {
    const endpoint = ApiEndpoints.favorites;
    try {
      final response = await _client.get(endpoint);

      if (response.data is! Map<String, dynamic>) {
        logger.e(Messages.parsing.invalidFormat);
        throw ParsingException(Messages.parsing.invalidFormat);
      }
      final data = response.data as Map<String, dynamic>;
      final favoritesResponseDto = FavoritesResponseDto.fromJson(data);

      favoritesResponseDto.info.throwIfNotSuccess();

      logger.i(Messages.profile.favoritesSuccess);

      return favoritesResponseDto;
    } catch (e) {
      logger.e(Messages.profile.favoritesFetchFailed(e.toString()));
      rethrow;
    }
  }
}
