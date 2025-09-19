import 'dart:async';

import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/system_events.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';

/// Concrete implementation of [GlobalEventDispatcher].

/// Manages Feature → Feature communication without direct coupling.
/// Manages Core → Feature communication without direct dependencies.

class GlobalEventDispatcherImpl implements GlobalEventDispatcher {
  /// [StreamController] to broadcasts events to all listeners
  final _controller = StreamController<SystemEvent>.broadcast();

  @override
  /// Publishes events to all subscribers
  void publish(SystemEvent event) => _controller.add(event);

  @override
  /// Provides a [Stream] for subscribing to global events
  Stream<SystemEvent> get stream => _controller.stream;

  /// [StreamController]'s disposal to prevent memory leaks
  void dispose() => _controller.close();
}
