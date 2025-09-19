part of '../utilities/utilities_library_imports.dart';

/// [APP-WIDE GLOBAL VARIABLE]

abstract class AppGradients {
  static LinearGradient movieOverlayGradient(Color color) => LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [ColorPalette.transparent, color],
  );

  static final bonusRewards = RadialGradient(
    colors: [
      // Based on Figma document: Deprecated .withOpacity(10) => .withAlpha(26),
      // Based on Figma document: Deprecated .withOpacity(3) => .withAlpha(8),
      ColorPalette.permaWhite.withAlpha(26),
      ColorPalette.permaWhite.withAlpha(8),
    ],
    // Based on Figma document:
    // (CSS): ’background: radial-gradient(165.43%)’ => (Flutter) ’radius: 1.6543’
    // Meaning: circle radius flows 65.43% beyond center point
    radius: 1.6543,
    stops: const [0.0, 1.0],
  );

  static RadialGradient tokensPack(Color color) => RadialGradient(
    /// Based on Figma document:
    /// (CSS): ’background: radial-gradient(144.56%)’ => (Flutter) ’radius: 1.4456’
    /// Meaning: circle radius flows 44.56% beyond center point
    radius: 1.4456,

    // Based on Figma document:
    /// (CSS) ’background: radial-gradient(..at 26.44% 15.22%)’ (X: 26.44% Y: 15.22%)
    /// Converted into (Flutter) ’Alignment(-0.4712, -0.6956)’ (X: -0.4712 Y: -0.6956)
    /// Provides center point and perspective to the radial gradient.
    center: const Alignment(-0.47, -0.69),

    colors: [color, ColorPalette.bottomSheetGradientPrimary],
    stops: const [0.0, 1.0],
  );
}
