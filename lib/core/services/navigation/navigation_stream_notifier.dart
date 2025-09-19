import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_bloc.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_state.dart';

/// Provides a [ChangeNotifier] for [GoRouter]'s refreshListenable parameter.
/// Listens to [SettingsBloc] state changes and notifies listeners

class NavigationNotifier extends ChangeNotifier {
  final SettingsBloc _bloc;
  late final StreamSubscription<SettingsState> _subscription;

  NavigationNotifier(this._bloc) {
    _subscription = _bloc.stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
