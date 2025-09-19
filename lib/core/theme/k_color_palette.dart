part of '../utilities/utilities_library_imports.dart';

/// [APP-WIDE GLOBAL VARIABLE]

/// Embedded into Flutter's Theming System through [ColorPaletteAccessConfig].
/// Usage example:  `context.colorPalette.scaffoldBackground`

abstract class ColorPalette {
  /// Theme-Independent Colors
  static const Color permaBlack = Color(0xFF000000);
  static const Color permaWhite = Color(0xFFFFFFFF);
  static const Color permaRed = Color(0xFFFF0000);
  static const Color transparent = Color(0x00000000);

  /// Dark Mode Theme Color Palette
  static const Color scaffoldBackground = Color(0xFF090909);
  static const Color bottomSheetBackground = Color(0xFF090909);
  static const Color bottomSheetGradientPrimary = Color(0xFFE50914);
  static const Color bottomSheetGradientSecondary = Color(0xFF6F060B);
  static const Color bottomSheetGradientTertiary = Color(0xFF5949E6);
  static const Color buttonMainBackground = Color(0xFFE50914);
  static const Color buttonMainForeground = Color(0xFFFFFFFF);
  static const Color buttonLiteBackground = Color(0x1AFFFFFF);
  static const Color buttonLiteForeground = Color(0xFFFFFFFF);
  static const Color buttonLiteBorder = Color(0x33FFFFFF);
  static const Color textFieldBackground = Color(0x1AFFFFFF);
  static const Color textFieldForeground = Color(0xFFFFFFFF);
  static const Color textFieldForegroundFaded = Color(0x80FFFFFF);
  static const Color textFieldBorder = Color(0x33FFFFFF);
  static const Color error = Color(0xFFE50914);
  static const Color text = Color(0xFFFFFFFF);
  static const Color textFaded05 = Color(0x80FFFFFF);
  static const Color textFaded075 = Color(0xBFFFFFFF);
  static const Color shadows = Color(0xFFFFFFFF);
  static const Color navigationBar = Color(0xFFFFFFFF);

  /// Ligh Mode Theme Color Palette
  static const Color lightModeScaffoldBackground = Color(0xFFFFFFFF);
  static const Color lightModeBottomSheetBackground = Color(0xFFCCCCCC);
  static const Color lightModeBottomSheetGradientPrimary = Color(0xFFE50914);
  static const Color lightModeBottomSheetGradientSecondary = Color(0xFF6F060B);
  static const Color lightModeBottomSheetGradientTertiary = Color(0xFF5949E6);
  static const Color lightModeButtonMainBackground = Color(0xFFE50914);
  static const Color lightModeButtonMainForeground = Color(0xFFFFFFFF);
  static const Color lightModeButtonLiteBackground = Color(0xFFEBEAEA);
  static const Color lightModeButtonLiteForeground = Color(0xFF000000);
  static const Color lightModeButtonLiteBorder = Color(0x33000000);
  static const Color lightModeTextFieldBackground = Color(0x1A000000);
  static const Color lightModeTextFieldForeground = Color(0xFF000000);
  static const Color lightModeTextFieldForegroundFaded = Color(0x80000000);
  static const Color lightModeTextFieldBorder = Color(0x33000000);
  static const Color lightModeError = Color(0xFFE50914);
  static const Color lightModeText = Color(0xFF000000);
  static const Color lightModeTextFaded05 = Color(0x80000000);
  static const Color lightModeTextFaded075 = Color(0xBF000000);
  static const Color lightModeShadows = Color(0xFF000000);
  static const Color lightModeNavigationBar = Color(0xFF000000);
}
