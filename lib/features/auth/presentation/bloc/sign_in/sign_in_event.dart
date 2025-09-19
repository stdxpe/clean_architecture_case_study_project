import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.freezed.dart';

@freezed
sealed class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String email) = SignInEmailChanged;
  const factory SignInEvent.passwordChanged(String password) =
      SignInPasswordChanged;
  const factory SignInEvent.passwordVisibilityToggled() =
      SignInPasswordVisibilityToggled;
  const factory SignInEvent.submitted() = SignInSubmitted;
}
