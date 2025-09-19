import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Helper class to configure System UI

Future<void> configureSystemUISettings() async {
  /// Device Screen Orientation set to Portrait Mode Only
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// UI Mode set to Immersive Sticky (no status-bar icons)
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  /// OPTIONAL with [SystemUiMode.edgeToEdge]
  final brightness = // Detects current platform brightness
      WidgetsBinding.instance.platformDispatcher.platformBrightness;

  /// OPTIONAL: Overlay style based on brightness
  SystemChrome.setSystemUIOverlayStyle(
    brightness == Brightness.dark
        ? const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.light,
            systemNavigationBarContrastEnforced: true,
          )
        : const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            systemNavigationBarContrastEnforced: true,
          ),
  );
}
