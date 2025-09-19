import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:case_study_clean_architecture_project/core/entities/preferences/preferences.dart';

part 'system_events.freezed.dart';

/// Global app-wide events for Cross-Cutting communication in Clean Architecture.
/// Allows features to publish/subscribe without direct coupling.

@freezed
sealed class SystemEvent with _$SystemEvent {
  const factory SystemEvent.signOutRequested() = SystemSignOutRequested;

  const factory SystemEvent.authStatusChanged({required bool isAuthenticated}) =
      SystemAuthStatusChanged;

  const factory SystemEvent.profilePhotoChanged({required String photoUrl}) =
      SystemProfilePhotoChanged;

  const factory SystemEvent.movieFavoriteStatusChanged({
    required String movieId,
  }) = SystemMovieFavoriteStatusChanged;

  const factory SystemEvent.initialPreferencesRequested() =
      SystemInitialPreferencesRequested;

  const factory SystemEvent.initialPreferencesFetched({
    required Preferences preferences,
  }) = SystemInitialPreferencesFetched;

  const factory SystemEvent.preferencesChanged({
    required Preferences preferences,
  }) = SystemPreferencesChanged;
}
