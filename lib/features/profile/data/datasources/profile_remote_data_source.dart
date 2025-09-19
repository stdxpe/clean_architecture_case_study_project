import 'package:case_study_clean_architecture_project/features/profile/data/models/profile_response_dto/profile_response_dto.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/models/favorites_response_dto/favorites_response_dto.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileResponseDto> getUserProfile();
  Future<FavoritesResponseDto> getFavoriteMovies();
  Future<ProfileResponseDto> uploadUserPhoto({
    required String filePath,
  });
}
