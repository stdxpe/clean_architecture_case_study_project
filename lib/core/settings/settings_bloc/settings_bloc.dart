import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:case_study_clean_architecture_project/core/dependency_injection/injector.dart';
import 'package:case_study_clean_architecture_project/core/entities/preferences/preferences.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_event.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_state.dart';
import 'package:case_study_clean_architecture_project/core/services/locale/locale_settings_service.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_connection_service.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_bloc.dart';

/// Global-scoped Bloc for app-wide settings and user preferences.
/// Ensures no direct dependencies on Feature-to-Feature or Core-to-Feature.

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final LocaleSettingsService _localeSettingsService;
  final GlobalEventDispatcher _eventDispatcher;
  final NetworkConnectionService _networkService;
  late final StreamSubscription<bool> _networkStatus;
  late final StreamSubscription<SystemEvent> _subscription;

  SettingsBloc(
    this._localeSettingsService,
    this._eventDispatcher,
    this._networkService,
  ) : super(SettingsState.initial()) {
    on<SettingsAuthStatusChanged>(_onAuthStatusChanged);
    on<SettingsAuthStatusRequested>(_onAuthStatusRequested);
    on<SettingsPreferencesChanged>(_onPreferencesChanged);
    on<SettingsInitialPreferencesRequested>(_onInitialPreferencesRequested);

    _listenSystemEvents();
    _listenNetworkStatus();
    add(const SettingsInitialPreferencesRequested());
  }

  void _onAuthStatusRequested(
    SettingsAuthStatusRequested event,
    Emitter<SettingsState> emit,
  ) => emit(state.copyWith(isUserAuthenticated: event.isAuthenticated));

  Future<void> _onAuthStatusChanged(
    SettingsAuthStatusChanged event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isUserAuthenticated: event.isAuthenticated));
    // Dispose/Reset for non page-scoped Bloc's if signedOut
    if (!event.isAuthenticated) {
      await getIt.resetLazySingleton<ProfileBloc>();
      await getIt.resetLazySingleton<FavoriteMoviesBloc>();
    }
  }

  Future<void> _onPreferencesChanged(
    SettingsPreferencesChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _setPreferences(event.preferences);
    emit(state.copyWith(preferences: event.preferences));
  }

  Future<void> _onInitialPreferencesRequested(
    SettingsInitialPreferencesRequested event,
    Emitter<SettingsState> emit,
  ) async {
    final preferences = state.preferences ?? await _getPreferences();
    emit(state.copyWith(preferences: preferences));

    _eventDispatcher.publish(
      SystemEvent.initialPreferencesFetched(preferences: preferences),
    );
  }

  Future<void> _setPreferences(Preferences prefs) async {
    await _localeSettingsService.setLocale(prefs.locale);
    await _localeSettingsService.setThemeMode(prefs.themeMode);
    await _localeSettingsService.setRememberMe(remember: prefs.rememberMe);
    await _localeSettingsService.setNotifications(
      enabled: prefs.notificationsEnabled,
    );
  }

  Future<Preferences> _getPreferences() async {
    final locale = await _localeSettingsService.getLocale();
    final themeMode = await _localeSettingsService.getThemeMode();
    final rememberMe = await _localeSettingsService.getRememberMe();
    final notifications = await _localeSettingsService.getNotifications();

    final prefs = Preferences(
      themeMode: themeMode,
      locale: locale ?? AppLocale.en,
      rememberMe: rememberMe ?? true,
      notificationsEnabled: notifications ?? true,
    );

    logger.d(prefs.toString());
    return prefs;
  }

  /// Helper method to subscribe global system events
  void _listenSystemEvents() {
    _subscription = _eventDispatcher.stream.listen((event) {
      switch (event) {
        case SystemInitialPreferencesRequested():
          add(const SettingsEvent.initialPreferencesRequested());

        case SystemPreferencesChanged():
          add(SettingsEvent.preferencesChanged(preferences: event.preferences));

        case SystemAuthStatusChanged():
          add(
            SettingsEvent.authStatusChanged(
              isAuthenticated: event.isAuthenticated,
            ),
          );

        default:
      }
    });
  }

  void _listenNetworkStatus() {
    _networkStatus = _networkService.isConnected.listen((status) {
      if (state.isConnected == status) return;
      emit(state.copyWith(isConnected: status));
    });

    _networkService.validateCurrentConnection().then(
      (status) {
        if (state.isConnected == status) return;
        emit(state.copyWith(isConnected: status));
      },
      onError: (_) {
        if (!state.isConnected) return;
        emit(state.copyWith(isConnected: false));
      },
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    _networkStatus.cancel();
    logger.d(Messages.core.disposed(getClassName));
    return super.close();
  }
}
