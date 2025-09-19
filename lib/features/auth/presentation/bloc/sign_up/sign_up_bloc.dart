import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/extensions/validation_extensions.dart';
import 'package:case_study_clean_architecture_project/features/auth/domain/usecases/auth_usecases.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_event.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_state.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_status.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthUseCases _useCases;
  final GlobalEventDispatcher _eventDispatcher;

  SignUpBloc(this._useCases, this._eventDispatcher)
    : super(const SignUpState(status: SignUpStatus.initial())) {
    on<SignUpNameChanged>(_onNameChanged);
    on<SignUpEmailChanged>(_onEmailChanged);
    on<SignUpPasswordChanged>(_onPasswordChanged);
    on<SignUpConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<SignUpPasswordVisibilityToggled>(_onPasswordVisibilityToggled);
    on<SignUpSubmitted>(_onSubmitted);
  }

  void _onNameChanged(
    SignUpNameChanged event,
    Emitter<SignUpState> emit,
  ) => emit(
    state.copyWith(
      name: event.name,
      status: const SignUpStatus.initial(),
    ),
  );

  void _onEmailChanged(
    SignUpEmailChanged event,
    Emitter<SignUpState> emit,
  ) => emit(
    state.copyWith(
      email: event.email,
      status: const SignUpStatus.initial(),
    ),
  );

  void _onPasswordChanged(
    SignUpPasswordChanged event,
    Emitter<SignUpState> emit,
  ) => emit(
    state.copyWith(
      password: event.password,
      status: const SignUpStatus.initial(),
    ),
  );

  void _onConfirmPasswordChanged(
    SignUpConfirmPasswordChanged event,
    Emitter<SignUpState> emit,
  ) => emit(
    state.copyWith(
      confirmPassword: event.confirmPassword,
      status: const SignUpStatus.initial(),
    ),
  );

  void _onPasswordVisibilityToggled(
    SignUpPasswordVisibilityToggled event,
    Emitter<SignUpState> emit,
  ) => emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));

  Future<void> _onSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    final error = state.validateFields();
    if (error != null) {
      emit(state.copyWith(status: SignUpStatus.failure(error)));
      return;
    }

    emit(
      state.copyWith(status: const SignUpStatus.loading(), isSubmitting: true),
    );

    final result = await _useCases.signUp(
      name: state.name,
      email: state.email,
      password: state.password,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: SignUpStatus.failure(failure.toUIMessage()),
          isSubmitting: false,
        ),
      ),
      (user) {
        emit(
          state.copyWith(
            status: const SignUpStatus.success(),
            isSubmitting: false,
          ),
        );
        _eventDispatcher.publish(
          const SystemEvent.authStatusChanged(isAuthenticated: true),
        );
      },
    );
  }
}
