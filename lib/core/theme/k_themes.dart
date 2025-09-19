part of '../utilities/utilities_library_imports.dart';

/// [APP WIDE GLOBAL VARIABLE]

class AppThemes {
  /// DARK THEME
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextThemes.textTheme,
    primaryTextTheme: AppTextThemes.textTheme,
    fontFamily: AppConstants.fonts.euclid,
    scaffoldBackgroundColor: ColorPaletteAccessConfig.dark.scaffoldBackground,
    extensions: const <ThemeExtension<dynamic>>[ColorPaletteAccessConfig.dark],
    inputDecorationTheme: _inputDecorationTheme(ColorPaletteAccessConfig.dark),
    elevatedButtonTheme: _elevatedButtonTheme(ColorPaletteAccessConfig.dark),
    outlinedButtonTheme: _outlinedButtonTheme(ColorPaletteAccessConfig.dark),
    filledButtonTheme: _filledButtonTheme(ColorPaletteAccessConfig.dark),
    iconButtonTheme: _iconButtonTheme(ColorPaletteAccessConfig.dark),
    bottomSheetTheme: _bottomSheetTheme(ColorPaletteAccessConfig.dark),
    iconTheme: _iconTheme(ColorPaletteAccessConfig.dark),
    chipTheme: _chipTheme(ColorPaletteAccessConfig.dark),
  );

  /// LIGHT THEME
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextThemes.textTheme,
    primaryTextTheme: AppTextThemes.textTheme,
    fontFamily: AppConstants.fonts.euclid,
    scaffoldBackgroundColor: ColorPaletteAccessConfig.light.scaffoldBackground,
    extensions: const <ThemeExtension<dynamic>>[ColorPaletteAccessConfig.light],
    inputDecorationTheme: _inputDecorationTheme(ColorPaletteAccessConfig.light),
    elevatedButtonTheme: _elevatedButtonTheme(ColorPaletteAccessConfig.light),
    outlinedButtonTheme: _outlinedButtonTheme(ColorPaletteAccessConfig.light),
    filledButtonTheme: _filledButtonTheme(ColorPaletteAccessConfig.light),
    iconButtonTheme: _iconButtonTheme(ColorPaletteAccessConfig.light),
    bottomSheetTheme: _bottomSheetTheme(ColorPaletteAccessConfig.light),
    iconTheme: _iconTheme(ColorPaletteAccessConfig.light),
    chipTheme: _chipTheme(ColorPaletteAccessConfig.light),
  );

  static InputDecorationTheme _inputDecorationTheme(
    ColorPaletteAccessConfig colors,
  ) {
    return InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: colors.textFieldBackground,
      contentPadding: EdgeInsets.symmetric(
        vertical: AppConstants.paddings.textFieldV,
      ),
      hintStyle: TextStyle(
        fontSize: AppConstants.fontSizes.size12,
        color: colors.textFieldForegroundFaded,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radius.textfield),
        borderSide: BorderSide(
          color: colors.textFieldBorder,
          width: AppConstants.sizes.borderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.radius.textfield),
        borderSide: BorderSide(
          color: colors.textFieldForeground,
          width: AppConstants.sizes.borderWidth,
        ),
      ),
      prefixIconColor: WidgetStateColor.resolveWith(
        (states) => states.contains(WidgetState.focused)
            ? colors.textFieldForeground
            : colors.textFieldForegroundFaded,
      ),
      suffixIconColor: WidgetStateColor.resolveWith(
        (states) => states.contains(WidgetState.focused)
            ? colors.textFieldForeground
            : colors.textFieldForegroundFaded,
      ),
      prefixIconConstraints: BoxConstraints(
        minWidth: AppConstants.sizes.iconPrefix,
        minHeight: AppConstants.sizes.iconPrefix,
      ),
      suffixIconConstraints: BoxConstraints(
        minWidth: AppConstants.sizes.iconSuffix,
        minHeight: AppConstants.sizes.iconSuffix,
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(
    ColorPaletteAccessConfig colors,
  ) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(colors.buttonMainBackground),
        foregroundColor: WidgetStatePropertyAll(colors.buttonMainForeground),
        minimumSize: const WidgetStatePropertyAll(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: AppConstants.paddings.buttonV),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.radius.textfield),
          ),
        ),
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            fontSize: AppConstants.fontSizes.size16,
            fontWeight: FontWeight.w600,
            color: ColorPalette.permaWhite,
          ),
        ),
      ),
    );
  }

  static FilledButtonThemeData _filledButtonTheme(
    ColorPaletteAccessConfig colors,
  ) {
    return FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(colors.buttonLiteBackground),
        foregroundColor: WidgetStateProperty.all(colors.buttonLiteForeground),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        elevation: WidgetStateProperty.all(0),
        side: WidgetStateProperty.all(
          BorderSide(
            color: colors.buttonLiteBorder,
            width: AppConstants.sizes.borderWidth,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.radius.textfield),
          ),
        ),
      ),
    );
  }

  static IconButtonThemeData _iconButtonTheme(ColorPaletteAccessConfig colors) {
    return IconButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: AppConstants.paddings.favoriteButtonH,
            vertical: AppConstants.paddings.favoriteButtonV,
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          ColorPalette.permaBlack.withAlpha(50),
        ),
        side: WidgetStateProperty.all(
          BorderSide(
            color: colors.buttonLiteBorder,
            width: AppConstants.sizes.borderWidth,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppConstants.radius.favoriteButton,
            ),
          ),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme(
    ColorPaletteAccessConfig colors,
  ) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          BorderSide(
            color: colors.buttonLiteBorder,
            width: AppConstants.sizes.borderWidth,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.radius.navBarItem),
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: AppConstants.paddings.navBarH,
            vertical: AppConstants.paddings.navBarV,
          ),
        ),
      ),
    );
  }

  static IconThemeData _iconTheme(ColorPaletteAccessConfig colors) {
    return const IconThemeData(color: ColorPalette.permaBlack, size: 18);
  }

  static BottomSheetThemeData _bottomSheetTheme(
    ColorPaletteAccessConfig colors,
  ) {
    return BottomSheetThemeData(
      backgroundColor: colors.bottomSheetBackground,
      modalBarrierColor: ColorPalette.permaBlack.withAlpha(200),
      clipBehavior: Clip.antiAlias,
      showDragHandle: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppConstants.radius.bottomSheet),
        ),
      ),
    );
  }

  static ChipThemeData _chipTheme(ColorPaletteAccessConfig colors) {
    return ChipThemeData(
      elevation: 5,
      pressElevation: 0,
      disabledColor: ColorPalette.transparent,
      selectedColor: ColorPalette.transparent,
      secondarySelectedColor: ColorPalette.transparent,
      shadowColor: ColorPalette.transparent,
      surfaceTintColor: ColorPalette.transparent,
      backgroundColor: const Color(0xFFFFECB3),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.radius.circular),
      ),
      labelPadding: EdgeInsets.zero,
      side: BorderSide.none,
    );
  }
}
