part of '../utilities/utilities_library_imports.dart';

/// Usage example:  `context.theme` instead of `Theme.of(context)`
extension ThemeAccessExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

/// Usage example:  `context.colorPalette`
extension ColorPaletteExtension on BuildContext {
  ColorPaletteAccessConfig get colorPalette => Theme.of(this).colorPalette;
}

/// Usage example:  `context.theme.colorPalette`
extension ColorPaletteExtensionOnThemeData on ThemeData {
  ColorPaletteAccessConfig get colorPalette =>
      extension<ColorPaletteAccessConfig>() ?? ColorPaletteAccessConfig.dark;
}

/// Usage example:  `context.textTheme` instead of `Theme.of(context).textTheme`
extension TextThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

/// Usage example:  `context.textTheme.title`
/// Custom semantic name getters for commonly used text styles in the application.
/// Replaces Material Design and Flutter's generic names like displaySmall or bodyMedium...
extension TextThemeAccessExtension on TextTheme {
  TextStyleAccessConfig get title => TextStyleAccessConfig(headlineMedium!);
  TextStyleAccessConfig get subtitle => TextStyleAccessConfig(bodyMedium!);
  TextStyleAccessConfig get infoLight => TextStyleAccessConfig(labelSmall!);
  TextStyleAccessConfig get infoBold => TextStyleAccessConfig(labelLarge!);
  TextStyleAccessConfig get action => TextStyleAccessConfig(titleMedium!);
  TextStyleAccessConfig get montserrat => TextStyleAccessConfig(displayLarge!);
}

/// Elevated Button Theme Override Extension for ThemeData
extension ElevatedButtonStyleExtension on ButtonStyle {
  ButtonStyle withOptional({
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    double? height,
    double? radius,
  }) {
    return copyWith(
      padding: padding != null ? WidgetStatePropertyAll(padding) : null,
      minimumSize: const WidgetStatePropertyAll(Size.zero),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: radius != null
          ? WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            )
          : null,
      textStyle: textStyle != null ? WidgetStatePropertyAll(textStyle) : null,
    );
  }
}

/// Fileed Button Theme Override Extension for ThemeData
extension FilledButtonStyleExtension on ButtonStyle {
  ButtonStyle withOptionalFilled({
    Color? backgroundColor,
    Color? foregroundColor,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    OutlinedBorder? shape,
    BorderSide? side,
    double? elevation,
    TextStyle? textStyle,
  }) {
    // Helper: Wrap with WidgetStatePropertyAll if not null, otherwise null (default)
    WidgetStateProperty<T>? wrap<T>(T? value) =>
        value != null ? WidgetStatePropertyAll(value) : null;

    return copyWith(
      backgroundColor: wrap(backgroundColor),
      foregroundColor: wrap(foregroundColor),
      padding: wrap(padding),
      minimumSize: wrap(minimumSize),
      shape: wrap(shape),
      side: wrap(side),
      elevation: wrap(elevation),
      textStyle: wrap(textStyle),
    );
  }
}

/// Icon Button Theme Override Extension for ThemeData
extension IconButtonStyleExtension on ButtonStyle {
  ButtonStyle withOptionalIconButton({
    double? width,
    double? height,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    double? borderRadius,
    EdgeInsets? padding,
  }) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
    );
    final size = (width != null || height != null)
        ? Size(width ?? 0, height ?? 0)
        : null;
    return copyWith(
      side: WidgetStateProperty.all(
        BorderSide(
          color: borderColor ?? ColorPalette.permaWhite.withAlpha(100),
          width: borderWidth ?? AppConstants.sizes.borderWidth,
        ),
      ),
      fixedSize: size != null ? WidgetStatePropertyAll(size) : null,
      backgroundColor: backgroundColor != null
          ? WidgetStatePropertyAll(backgroundColor)
          : null,
      shape: WidgetStatePropertyAll(shape),
      padding: padding != null ? WidgetStatePropertyAll(padding) : null,
    );
  }
}
