import 'package:case_study_clean_architecture_project/features/auth/data/models/auth_response_dto/auth_response_dto.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseDto> signIn({
    required String email,
    required String password,
  });

  Future<AuthResponseDto> signUp({
    required String name,
    required String email,
    required String password,
  });
}
