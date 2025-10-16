import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  /*
   * ┏==================================================================================================┓
   * ┃                                   Internal cached theme objects                                  ┃
   * ┗==================================================================================================┛
   */
  ThemeData get _theme => Theme.of(this);
  TextTheme get _text => _theme.textTheme;
  ColorScheme get _colors => _theme.colorScheme;
  Color get scaffoldBackgroundColor => _theme.scaffoldBackgroundColor;

  /*
   * ┏==================================================================================================┓
   * ┃                                      Text Styles                                                 ┃
   * ┗==================================================================================================┛
   */
  TextStyle? get displayLarge => _text.displayLarge;
  TextStyle? get displayMedium => _text.displayMedium;
  TextStyle? get displaySmall => _text.displaySmall;

  TextStyle? get headlineLarge => _text.headlineLarge;
  TextStyle? get headlineMedium => _text.headlineMedium;
  TextStyle? get headlineSmall => _text.headlineSmall;

  TextStyle? get titleLarge => _text.titleLarge;
  TextStyle? get titleMedium => _text.titleMedium;
  TextStyle? get titleSmall => _text.titleSmall;

  TextStyle? get labelLarge => _text.labelLarge;
  TextStyle? get labelMedium => _text.labelMedium;
  TextStyle? get labelSmall => _text.labelSmall;

  TextStyle? get bodyLarge => _text.bodyLarge;
  TextStyle? get bodyMedium => _text.bodyMedium;
  TextStyle? get bodySmall => _text.bodySmall;
/*
 * ┏==================================================================================================┓
 * ┃                                   Color Scheme (Material 3)                                      ┃
 * ┗==================================================================================================┛
 */

/*
 * ===================================================================================================
 * 🟦 Primary — Used for main brand elements like buttons, toggles, and active states.
 * ===================================================================================================
 */
  Color get primaryColor => _colors.primary;

  /// Text or icons that appear on top of a primary surface.
  Color get onPrimaryColor => _colors.onPrimary;

  /// Contrast variant of primary used on dark backgrounds.
  Color get inversePrimaryColor => _colors.inversePrimary;

  /// Background surface with a primary tint (e.g., elevated buttons).
  Color get primaryContainerColor => _colors.primaryContainer;

  /// Text or icons on top of a primary container.
  Color get onPrimaryContainerColor => _colors.onPrimaryContainer;

/*
 * ===================================================================================================
 * 🟢 Secondary — Used for less prominent UI like chips, secondary buttons, and selection controls.
 * ===================================================================================================
 */
  Color get secondaryColor => _colors.secondary;

  /// Text or icons that appear on top of a secondary surface.
  Color get onSecondaryColor => _colors.onSecondary;

  /// Background surface using the secondary tone.
  Color get secondaryContainerColor => _colors.secondaryContainer;

  /// Text or icons on top of a secondary container.
  Color get onSecondaryContainerColor => _colors.onSecondaryContainer;

  /// The overall scaffold background for screens.
  Color get backgroundColor => _theme.scaffoldBackgroundColor;

/*
 * ===================================================================================================
 * 🟣 Tertiary — Used for complementary accents such as highlights, badges, and links.
 * ===================================================================================================
 */
  Color get tertiaryColor => _colors.tertiary;

  /// Text or icons that appear on a tertiary surface.
  Color get onTertiaryColor => _colors.onTertiary;

  /// Background surface using the tertiary tone.
  Color get tertiaryContainerColor => _colors.tertiaryContainer;

  /// Text or icons on top of a tertiary container.
  Color get onTertiaryContainerColor => _colors.onTertiaryContainer;

  /// Fixed tertiary accent tone used for elevated UI (e.g., FAB).
  Color get tertiaryFixedColor => _colors.tertiaryFixed;

  /// Text/icons used on tertiary fixed surfaces.
  Color get onTertiaryFixedColor => _colors.onTertiaryFixed;

  /// Dimmer fixed tertiary tone for subtle accents.
  Color get tertiaryFixedDimColor => _colors.tertiaryFixedDim;

  /// Text/icons used on dim tertiary variant.
  Color get onTertiaryFixedVariantColor => _colors.onTertiaryFixedVariant;

/*
 * ===================================================================================================
 * ⚪ Surface — Used for app surfaces like cards, sheets, and dialogs.
 * ===================================================================================================
 */
  Color get surfaceColor => _colors.surface;

  /// Default text/icons on top of any surface.
  Color get onSurfaceColor => _colors.onSurface;

  /// Secondary text/icons on surface (less emphasis).
  Color get onSurfaceVariantColor => _colors.onSurfaceVariant;

  /// Highest-elevation container tone for popups or sheets.
  Color get surfaceContainerHighestColor => _colors.surfaceContainerHighest;

  /// High elevation tone for surfaces above base background.
  Color get surfaceContainerHighColor => _colors.surfaceContainerHigh;

  /// Default container tone used most commonly.
  Color get surfaceContainerColor => _colors.surfaceContainer;

  /// Lower elevation tone for background layers.
  Color get surfaceContainerLowColor => _colors.surfaceContainerLow;

  /// Lowest elevation tone, close to background.
  Color get surfaceContainerLowestColor => _colors.surfaceContainerLowest;

  /// Tint overlay used to create elevation effects.
  Color get surfaceTintColor => _colors.surfaceTint;

  /// Opposite surface tone for inverse UI (e.g., snackbars on dark surfaces).
  Color get inverseSurfaceColor => _colors.inverseSurface;

  /// Text/icons on inverse surface.
  Color get onInverseSurfaceColor => _colors.onInverseSurface;

/*
 * ===================================================================================================
 * 🔴 Error — Used for validation messages, alerts, and destructive actions.
 * ===================================================================================================
 */
  Color get errorColor => _colors.error;

  /// Text/icons that appear on top of an error background.
  Color get onErrorColor => _colors.onError;

  /// Background container for error messages or error cards.
  Color get errorContainerColor => _colors.errorContainer;

  /// Text/icons that appear on top of error containers.
  Color get onErrorContainerColor => _colors.onErrorContainer;

/*
 * ===================================================================================================
 * 🟤 Outline — Used for borders, strokes, dividers, and visual separation.
 * ===================================================================================================
 */
  Color get outlineColor => _colors.outline;

  /// Softer outline used for lower emphasis borders.
  Color get outlineVariantColor => _colors.outlineVariant;

/*
 * ===================================================================================================
 * ⚫ Miscellaneous — Used for shadows, overlays, and system-level UI effects.
 * ===================================================================================================
 */
  /// Drop shadow color for elevated elements.
  Color get shadowColor => _colors.shadow;

  /// Scrim color for modals, drawers, or backdrops.
  Color get scrimColor => _colors.scrim;

  /// Brightest surface tone, used in contrast elevation.
  Color get surfaceBrightColor => _colors.surfaceBright;

  /// Dim surface tone, typically used behind components.
  Color get surfaceDimColor => _colors.surfaceDim;

  /*
   * ┏==================================================================================================┓
   * ┃                                      Widgets Objects                                             ┃
   * ┗==================================================================================================┛
   */
  AppBarThemeData get appBarTheme => _theme.appBarTheme;
  TextStyle? get appBarTitleTextStyle => appBarTheme.titleTextStyle;
  TextStyle? get appBarToolbarTextStyle => appBarTheme.toolbarTextStyle;

  ElevatedButtonThemeData get elevatedButtonTheme => _theme.elevatedButtonTheme;
  OutlinedButtonThemeData get outlinedButtonTheme => _theme.outlinedButtonTheme;
  TextButtonThemeData get textButtonTheme => _theme.textButtonTheme;

  IconThemeData get iconTheme => _theme.iconTheme;
  IconThemeData get primaryIconTheme => _theme.primaryIconTheme;

  CardThemeData get cardTheme => _theme.cardTheme;
  Color? get cardColor => cardTheme.color;

  /*
   * ┏==================================================================================================┓
   * ┃                                      Screen Size                                                 ┃
   * ┗==================================================================================================┛
   */
  Size get screenSize => MediaQuery.of(this).size;
  double get screenHeight => screenSize.height;
  double get screenWidth => screenSize.width;
}
