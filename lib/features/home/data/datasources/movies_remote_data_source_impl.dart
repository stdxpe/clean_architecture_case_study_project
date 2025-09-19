import 'package:fpdart/fpdart.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/entities/failure/failure.dart';
import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_client.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/data/datasources/movies_remote_data_source.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/movies_response_dto/movies_response_dto.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/toggle_favorite_response_dto/toggle_favorite_response_dto.dart';

/// Concrete implementation of [MoviesRemoteDataSource].
/// Performs API requests, and response serialization/parsing with logs.

/// Functional error handling (fpdart, [Either], fold) is intentionally avoided here.
/// Throws custom raw [Exception]'s, instead of Domain-level [Failure] objects.

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  MoviesRemoteDataSourceImpl(this._client);

  final NetworkClient _client;

  @override
  Future<MoviesResponseDto> getPaginatedMovies({int page = 1}) async {
    const endpoint = ApiEndpoints.movies;
    final queryParameters = {'page': page};
    try {
      final response = await _client.get(
        endpoint,
        queryParameters: queryParameters,
      );

      if (response.data is! Map<String, dynamic>) {
        logger.e(Messages.parsing.invalidFormat);
        throw ParsingException(Messages.parsing.invalidFormat);
      }

      final data = response.data as Map<String, dynamic>;
      final moviesResponseDto = MoviesResponseDto.fromJson(data);

      moviesResponseDto.info.throwIfNotSuccess();

      logger.i(Messages.home.paginationSuccess(page: page));

      return moviesResponseDto;
    } catch (e) {
      logger.e(Messages.home.loadFailed(e.toString()));
      rethrow;
    }
  }

  @override
  Future<ToggleFavoriteResponseDto> toggleFavoriteMovie({
    required String movieId,
  }) async {
    final endpoint = '${ApiEndpoints.favoriteWithId}/$movieId';
    try {
      final response = await _client.post(endpoint);

      if (response.data is! Map<String, dynamic>) {
        logger.e(Messages.parsing.invalidFormat);
        throw ParsingException(Messages.parsing.invalidFormat);
      }

      final data = response.data as Map<String, dynamic>;
      final dto = ToggleFavoriteResponseDto.fromJson(data);

      dto.info.throwIfNotSuccess();

      logger.i(Messages.home.favoriteToggled(movieId));
      return dto;
    } catch (e) {
      logger.e(Messages.home.loadFailed(e.toString()));
      rethrow;
    }
  }
}
