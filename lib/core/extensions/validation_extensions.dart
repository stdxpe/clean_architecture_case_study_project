import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_state.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_state.dart';

extension EmailValidator on String {
  /// Checks if the string is a valid email format
  bool get isValidEmail =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
}

extension PasswordValidator on String {
  /// Checks if the password has at least 6 characters
  bool get isValidPassword => length >= 6;
}

extension NonEmptyValidator on String {
  /// Checks if the string is not empty or just whitespace
  bool get isNotEmpty => trim().isNotEmpty;
}

extension MatchValidator on String {
  /// Checks if the string matches another string
  bool matches(String other) => this == other;
}

extension SignInFieldValidator on SignInState {
  String? validateFields() {
    if (!email.isNotEmpty) return AppStrings.emptyEmail;
    if (!email.isValidEmail) return AppStrings.invalidEmail;
    if (!password.isNotEmpty) return AppStrings.emptyPassword;
    if (!password.isValidPassword) return AppStrings.invalidPassword;
    return null;
  }
}

extension SignUpFieldValidator on SignUpState {
  String? validateFields() {
    if (!name.isNotEmpty) return AppStrings.emptyName;
    if (!email.isNotEmpty) return AppStrings.emptyEmail;
    if (!email.isValidEmail) return AppStrings.invalidEmail;
    if (!password.isNotEmpty) return AppStrings.emptyPassword;
    if (!password.isValidPassword) return AppStrings.invalidPassword;
    if (!confirmPassword.matches(password)) AppStrings.noMatchingPasswords;
    return null;
  }
}
