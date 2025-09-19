import 'dart:async';

import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';

/// Abstract interface for the [GlobalEventDispatcher].

abstract class GlobalEventDispatcher {
  /// Publishes events to all subscribers.
  void publish(SystemEvent event);

  /// Stream to subscribe to global events.
  Stream<SystemEvent> get stream;
}
