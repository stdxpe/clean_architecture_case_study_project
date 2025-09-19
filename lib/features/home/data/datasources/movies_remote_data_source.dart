import 'package:case_study_clean_architecture_project/features/home/data/models/movies_response_dto/movies_response_dto.dart';
import 'package:case_study_clean_architecture_project/features/home/data/models/toggle_favorite_response_dto/toggle_favorite_response_dto.dart';

abstract class MoviesRemoteDataSource {
  Future<MoviesResponseDto> getPaginatedMovies({int page = 1});

  Future<ToggleFavoriteResponseDto> toggleFavoriteMovie({
    required String movieId,
  });
}
