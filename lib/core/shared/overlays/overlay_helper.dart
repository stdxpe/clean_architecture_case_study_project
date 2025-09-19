import 'package:flutter/material.dart';

/// Helper class to show/hide [Overlay]'s on [BuildContext]

/// Usage: ’context.overlay.show('...Overlay()’
///   and: ’context.overlay.hide()’

class OverlayHelper {
  OverlayHelper._();
  static final OverlayHelper instance = OverlayHelper._();
  OverlayEntry? _currentEntry;

  void show(OverlayState overlay, Widget widget) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final entry = OverlayEntry(builder: (_) => widget);
      _currentEntry?.remove();
      _currentEntry = entry;
      overlay.insert(entry);
    });
  }

  void hide() {
    _currentEntry?.remove();
    _currentEntry = null;
  }

  bool get isShown => _currentEntry != null;
}
