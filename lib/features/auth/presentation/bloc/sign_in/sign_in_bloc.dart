import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:case_study_clean_architecture_project/core/extensions/error_extensions.dart';
import 'package:case_study_clean_architecture_project/core/extensions/validation_extensions.dart';
import 'package:case_study_clean_architecture_project/features/auth/domain/usecases/auth_usecases.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_event.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_state.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_status.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthUseCases _useCases;
  final GlobalEventDispatcher _eventDispatcher;

  SignInBloc(this._useCases, this._eventDispatcher)
    : super(const SignInState(status: SignInStatus.initial())) {
    on<SignInEmailChanged>(_onSignInEmailChanged);
    on<SignInPasswordChanged>(_onSignInPasswordChanged);
    on<SignInPasswordVisibilityToggled>(_onSignInPasswordVisibilityToggled);
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  void _onSignInEmailChanged(
    SignInEmailChanged event,
    Emitter<SignInState> emit,
  ) => emit(
    state.copyWith(
      email: event.email,
      status: const SignInStatus.initial(),
    ),
  );

  void _onSignInPasswordChanged(
    SignInPasswordChanged event,
    Emitter<SignInState> emit,
  ) => emit(
    state.copyWith(
      password: event.password,
      status: const SignInStatus.initial(),
    ),
  );

  void _onSignInPasswordVisibilityToggled(
    SignInPasswordVisibilityToggled event,
    Emitter<SignInState> emit,
  ) => emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));

  Future<void> _onSignInSubmitted(
    SignInSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    final error = state.validateFields();
    if (error != null) {
      emit(state.copyWith(status: SignInStatus.failure(error)));
      return;
    }

    emit(
      state.copyWith(status: const SignInStatus.loading(), isSubmitting: true),
    );

    final result = await _useCases.signIn(
      email: state.email,
      password: state.password,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: SignInStatus.failure(failure.toUIMessage()),
            isSubmitting: false,
          ),
        );
      },
      (user) {
        emit(
          state.copyWith(
            status: const SignInStatus.success(),
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
