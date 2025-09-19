import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/auth/domain/usecases/auth_usecases.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';

/// Feature-level Bloc for controlling authentication state (without Core → Feature dependency)
/// Delegates auth logic to [AuthUseCases], and publishes auth state changes via [GlobalEventDispatcher].

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCases _useCases;
  final GlobalEventDispatcher _eventDispatcher;
  StreamSubscription<SystemEvent>? _subscription;

  AuthBloc(this._useCases, this._eventDispatcher) : super(AuthState.initial()) {
    on<SignOutRequested>(_onSignOutRequested);
    on<AuthStatusRequested>(_onAuthStatusRequested);

    _listenSystemEvents();
    add(const AuthStatusRequested());
  }

  Future<void> _onSignOutRequested(
    SignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _useCases.signOut();

    result.match(
      (failure) {
        logger.d(Messages.auth.signOutFailed);
        emit(state.copyWith(isLoading: false));
      },
      (result) {
        logger.d(Messages.auth.signedOut);
        emit(state.copyWith(isLoading: false, isAuthenticated: false));
        _eventDispatcher.publish(
          const SystemEvent.authStatusChanged(isAuthenticated: false),
        );
      },
    );
  }

  Future<void> _onAuthStatusRequested(
    AuthStatusRequested event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _useCases.isAuthenticated();

    result.match(
      (failure) {
        logger.d(Messages.auth.checkFailed);
        emit(state.copyWith(isAuthenticated: false));
        _eventDispatcher.publish(
          const SystemEvent.authStatusChanged(isAuthenticated: false),
        );
      },
      (isAuthenticated) {
        logger.d(Messages.auth.status(true));
        emit(state.copyWith(isAuthenticated: isAuthenticated));
        _eventDispatcher.publish(
          SystemEvent.authStatusChanged(isAuthenticated: isAuthenticated),
        );
      },
    );
  }

  /// Helper method to subscribe global system events
  void _listenSystemEvents() {
    _subscription = _eventDispatcher.stream.listen((event) {
      switch (event) {
        case SystemSignOutRequested():
          add(const AuthEvent.signOutRequested());
        default:
      }
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    logger.d(Messages.core.disposed(getClassName));
    return super.close();
  }
}
