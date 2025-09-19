part of 'utilities_library_imports.dart';

/// EMBEDDED CUSTOM COLOR PALETTE IMPLEMENTATION TO THEMES

/// Overrides Flutter's built-in [Material] color names with custom semantic names.
/// Enables app-wide access to theme colors with meaningful and descriptive names,
/// rather than names like onPrimary, secondary, tertiary,...
/// Provides both light and dark theme configurations via [ThemeExtension].

/// Usage example:  ’context.colorPalette.bottomSheetBackground’

@immutable
class ColorPaletteAccessConfig
    extends ThemeExtension<ColorPaletteAccessConfig> {
  @override
  ColorPaletteAccessConfig copyWith() => this;

  final Color scaffoldBackground;
  final Color buttonMainBackground;
  final Color buttonMainForeground;
  final Color buttonLiteBackground;
  final Color buttonLiteForeground;
  final Color buttonLiteBorder;
  final Color textFieldBackground;
  final Color textFieldForeground;
  final Color textFieldForegroundFaded;
  final Color textFieldBorder;
  final Color error;
  final Color text;
  final Color textFaded05;
  final Color textFaded075;
  final Color shadows;
  final Color navigationBar;
  final Color bottomSheetBackground;
  final Color bottomSheetPrimary;
  final Color bottomSheetGradientSecondary;
  final Color bottomSheetGradientTertiary;

  const ColorPaletteAccessConfig({
    required this.scaffoldBackground,
    required this.buttonMainBackground,
    required this.buttonMainForeground,
    required this.buttonLiteBackground,
    required this.buttonLiteForeground,
    required this.buttonLiteBorder,
    required this.textFieldBackground,
    required this.textFieldForeground,
    required this.textFieldForegroundFaded,
    required this.textFieldBorder,
    required this.error,
    required this.text,
    required this.textFaded05,
    required this.textFaded075,
    required this.shadows,
    required this.navigationBar,
    required this.bottomSheetBackground,
    required this.bottomSheetPrimary,
    required this.bottomSheetGradientSecondary,
    required this.bottomSheetGradientTertiary,
  });

  @override
  ColorPaletteAccessConfig lerp(
    covariant ThemeExtension<ColorPaletteAccessConfig>? other,
    double t,
  ) => this;

  static const dark = ColorPaletteAccessConfig(
    scaffoldBackground: ColorPalette.scaffoldBackground,
    buttonMainBackground: ColorPalette.buttonMainBackground,
    buttonMainForeground: ColorPalette.buttonMainForeground,
    buttonLiteBackground: ColorPalette.buttonLiteBackground,
    buttonLiteForeground: ColorPalette.buttonLiteForeground,
    buttonLiteBorder: ColorPalette.buttonLiteBorder,
    textFieldBackground: ColorPalette.textFieldBackground,
    textFieldForeground: ColorPalette.textFieldForeground,
    textFieldForegroundFaded: ColorPalette.textFieldForegroundFaded,
    textFieldBorder: ColorPalette.textFieldBorder,
    error: ColorPalette.error,
    text: ColorPalette.text,
    textFaded05: ColorPalette.textFaded05,
    textFaded075: ColorPalette.textFaded075,
    shadows: ColorPalette.shadows,
    navigationBar: ColorPalette.navigationBar,
    bottomSheetBackground: ColorPalette.bottomSheetBackground,
    bottomSheetPrimary: ColorPalette.bottomSheetGradientPrimary,
    bottomSheetGradientSecondary: ColorPalette.bottomSheetGradientSecondary,
    bottomSheetGradientTertiary: ColorPalette.bottomSheetGradientTertiary,
  );

  static const light = ColorPaletteAccessConfig(
    scaffoldBackground: ColorPalette.lightModeScaffoldBackground,
    buttonMainBackground: ColorPalette.lightModeButtonMainBackground,
    buttonMainForeground: ColorPalette.lightModeButtonMainForeground,
    buttonLiteBackground: ColorPalette.lightModeButtonLiteBackground,
    buttonLiteForeground: ColorPalette.lightModeButtonLiteForeground,
    buttonLiteBorder: ColorPalette.lightModeButtonLiteBorder,
    textFieldBackground: ColorPalette.lightModeTextFieldBackground,
    textFieldForeground: ColorPalette.lightModeTextFieldForeground,
    textFieldForegroundFaded: ColorPalette.lightModeTextFieldForegroundFaded,
    textFieldBorder: ColorPalette.lightModeTextFieldBorder,
    error: ColorPalette.lightModeError,
    text: ColorPalette.lightModeText,
    textFaded05: ColorPalette.lightModeTextFaded05,
    textFaded075: ColorPalette.lightModeTextFaded075,
    shadows: ColorPalette.lightModeShadows,
    navigationBar: ColorPalette.lightModeNavigationBar,
    bottomSheetBackground: ColorPalette.lightModeBottomSheetBackground,
    bottomSheetPrimary: ColorPalette.lightModeBottomSheetGradientPrimary,
    bottomSheetGradientSecondary:
        ColorPalette.lightModeBottomSheetGradientSecondary,
    bottomSheetGradientTertiary:
        ColorPalette.lightModeBottomSheetGradientTertiary,
  );
}
