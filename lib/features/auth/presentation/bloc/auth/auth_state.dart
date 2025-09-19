import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    required bool isAuthenticated,
    required bool isLoading,
  }) = _AuthState;

  factory AuthState.initial() =>
      const AuthState(isAuthenticated: false, isLoading: false);
}
