import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:case_study_clean_architecture_project/core/errors/exceptions.dart';
import 'package:case_study_clean_architecture_project/core/entities/preferences/preferences.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/entities/ui_side_effect/ui_side_effect.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/usecases/profile_usecases.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_state.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_event.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_status.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCases _useCases;
  final GlobalEventDispatcher _eventDispatcher;
  StreamSubscription<SystemEvent>? _subscription;

  ProfileBloc(this._useCases, this._eventDispatcher)
    : super(ProfileState.initial()) {
    on<GetUserProfile>(_onGetUserProfile);
    on<ProfileSignOutRequested>(_onSignOutRequested);
    on<CrashlyticsRequested>(_onCrashlyticsRequested);
    on<NotificationRequested>(_onNotificationRequested);
    on<PreferencesChanged>(_onProfilePreferencesChanged);
    on<InitialPreferencesRequested>(_onInitialPreferencesRequested);

    _listenSystemEvents();
    add(const GetUserProfile());
    add(const InitialPreferencesRequested());
  }

  Future<void> _onGetUserProfile(
    GetUserProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: const ProfileStatus.loading()));
    await Future<void>.delayed(500.ms); // Shows loading indicator min 500.ms

    final result = await _useCases.getUserProfile();

    result.fold(
      (failure) {
        emit(state.copyWith(status: ProfileStatus.failure(failure.message)));
        logger.e(Messages.profile.fetchFailed(failure.message));
      },
      (profile) => emit(
        state.copyWith(status: const ProfileStatus.success(), profile: profile),
      ),
    );
  }

  Future<void> _onProfilePreferencesChanged(
    PreferencesChanged event,
    Emitter<ProfileState> emit,
  ) async {
    final current = state.preferences;
    final preferences = Preferences(
      locale: event.locale ?? current.locale,
      themeMode: event.themeMode ?? current.themeMode,
      rememberMe: event.rememberMe ?? current.rememberMe,
      notificationsEnabled: event.notifications ?? current.notificationsEnabled,
    );

    logger.d(Messages.profile.preferencesChanged(preferences));

    // Optional: ’emit(state.copyWith(preferences: event.preferences)’ would be cleaner on Bloc.
    // 📌 But I preferred a cleaner and more semantic UI:   ’bloc.add(ProfileEvent.preferencesChanged(rememberMe: true)’
    // Instead of: ’bloc.add(ProfileEvent.preferencesChanged(preferences: state.preferences.copyWith(rememberMe: true))’

    emit(state.copyWith(preferences: preferences, uiSideEffect: null));
    _eventDispatcher.publish(
      SystemEvent.preferencesChanged(preferences: preferences),
    );
  }

  Future<void> _onCrashlyticsRequested(
    CrashlyticsRequested event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      throw const CrashlyticsTestException();
    } catch (e, _) {
      // 📌 ’logger.e’ sends crash reports to Crashlytics
      logger.e('Crashlytics test manually executed on Profile', e: e);
      // Optional: Insert StackTrace with $stacktrace or logger.e ’st’ parameter

      const msg = 'Crash report sent to Crashlytics!'; // Raw without locale
      emit(state.copyWith(uiSideEffect: const UISideEffect.notifyError(msg)));
    }
    // Optional for multiple crash notifications on UI
    emit(state.copyWith(uiSideEffect: null));
  }

  Future<void> _onNotificationRequested(
    NotificationRequested event,
    Emitter<ProfileState> emit,
  ) async {
    final show = UISideEffect.notifySuccess(AppStrings.notificationsEnabled);
    emit(state.copyWith(uiSideEffect: event.value ? show : null));
  }

  Future<void> _onInitialPreferencesRequested(
    InitialPreferencesRequested event,
    Emitter<ProfileState> emit,
  ) async =>
      _eventDispatcher.publish(const SystemEvent.initialPreferencesRequested());

  Future<void> _onSignOutRequested(
    ProfileSignOutRequested event,
    Emitter<ProfileState> emit,
  ) async => _eventDispatcher.publish(const SystemEvent.signOutRequested());

  /// Helper method to subscribe global system events
  void _listenSystemEvents() {
    _subscription = _eventDispatcher.stream.listen((event) {
      switch (event) {
        case SystemInitialPreferencesFetched():
          emit(state.copyWith(preferences: event.preferences));

        case SystemPreferencesChanged():
          emit(state.copyWith(preferences: event.preferences));

        case SystemProfilePhotoChanged():
          final updated = state.profile.copyWith(photoUrl: event.photoUrl);
          emit(state.copyWith(profile: updated));

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
