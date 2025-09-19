part of 'utilities_library_imports.dart';

/// Proxy wrapper class for [TextStyle]'s with flexible customizations.
/// Provides a structured and semantic way to access [TextStyle] properties in UI.

/// Usage examples:
///     1. Default access:        context.textTheme.title;
///     2. Default with params:   context.textTheme.title.fontSize;
///     3. Override with params:  context.textTheme.title(
///                                  color: Colors.red, fontSize: 20, ...);

class TextStyleAccessConfig extends TextStyle {
  final TextStyle defaultStyle;

  TextStyle get style => this;

  TextStyleAccessConfig(this.defaultStyle)
    : super(
        color: defaultStyle.color,
        backgroundColor: defaultStyle.backgroundColor,
        fontSize: defaultStyle.fontSize,
        fontWeight: defaultStyle.fontWeight,
        fontStyle: defaultStyle.fontStyle,
        letterSpacing: defaultStyle.letterSpacing,
        wordSpacing: defaultStyle.wordSpacing,
        textBaseline: defaultStyle.textBaseline,
        height: defaultStyle.height,
        inherit: defaultStyle.inherit,
        leadingDistribution: defaultStyle.leadingDistribution,
        locale: defaultStyle.locale,
        foreground: defaultStyle.foreground,
        background: defaultStyle.background,
        shadows: defaultStyle.shadows,
        fontFeatures: defaultStyle.fontFeatures,
        fontVariations: defaultStyle.fontVariations,
        decoration: defaultStyle.decoration,
        decorationColor: defaultStyle.decorationColor,
        decorationStyle: defaultStyle.decorationStyle,
        decorationThickness: defaultStyle.decorationThickness,
        debugLabel: defaultStyle.debugLabel,
        fontFamily: defaultStyle.fontFamily,
        fontFamilyFallback: defaultStyle.fontFamilyFallback,
        overflow: defaultStyle.overflow,
      );

  TextStyle call({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    String? fontFamily,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    double? letterSpacing,
    double? wordSpacing,
    TextOverflow? overflow,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    Color? backgroundColor,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    return copyWith(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      decoration: decoration,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      overflow: overflow,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      fontVariations: fontVariations,
      backgroundColor: backgroundColor,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}
