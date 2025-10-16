import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';
import 'snack_bar_theme_data.dart';
import 'text_style.dart';
import 'widgets/bottomNav/bottom_navigation_theme.dart';
import 'widgets/button/text_button_theme.dart';

part 'input_decoration.dart';
part 'widgets/app_bar_theme.dart';
part 'widgets/button/elevated_button_theme_data.dart';
part 'widgets/button/icon_button_theme_data.dart';
part 'widgets/button/outlined_button_theme_data.dart';
part 'widgets/card_theme.dart';
part 'widgets/icon_theme_data.dart';

class MsTheme {
  /*
   * ---> Unused variables for input decoration borders. 
   */

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        // Primary colors
        primary: MsColor.primary,
        onPrimary: MsColor.onPrimary,
        primaryContainer: MsColor.primaryContainer,
        onPrimaryContainer: MsColor.onPrimaryContainer,

        // Secondary colors
        secondary: MsColor.secondary,
        onSecondary: MsColor.onSecondary,
        secondaryContainer: MsColor.secondaryContainer,
        onSecondaryContainer: MsColor.onSecondaryContainer,

        // Tertiary colors
        
        tertiary: MsColor.tertiary,
        onTertiary: MsColor.onTertiary,
        tertiaryContainer: MsColor.tertiaryContainer,
        onTertiaryContainer: MsColor.onTertiaryContainer,

        // Error colors
        error: MsColor.error,
        onError: MsColor.onError,
        errorContainer: MsColor.errorContainer,
        onErrorContainer: MsColor.onErrorContainer,

        // Surface colors (for backgrounds, cards, etc.)
        surface: MsColor.surface,
        onSurface: MsColor.onSurface,
        surfaceDim: MsColor.surfaceDim,
        surfaceBright: MsColor.surfaceBright,
        surfaceContainerLowest: MsColor.surfaceContainerLowest,
        surfaceContainerLow: MsColor.surfaceContainerLow,
        surfaceContainer: MsColor.surfaceContainer,
        surfaceContainerHigh: MsColor.surfaceContainerHigh,
        surfaceContainerHighest: MsColor.surfaceContainerHighest,

        // Other colors
        onSurfaceVariant: MsColor.onSurfaceVariant,
        outline: MsColor.outline,
        outlineVariant: MsColor.outlineVariant,
        shadow: MsColor.shadow,
        scrim: MsColor.scrim,
        inverseSurface: MsColor.inverseSurface,
        onInverseSurface: MsColor.onInverseSurface,
        inversePrimary: MsColor.inversePrimary,
        surfaceTint: MsColor.surfaceTint,
        // Brightness for the color scheme
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: MsColor.background,
      tabBarTheme: TabBarThemeData(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.blueGrey.shade200,
        labelStyle:
            GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: Colors.amber,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      appBarTheme: MsAppBarTheme.light(),
      textTheme: MsTextStyle.msTextStyle,
      iconTheme: const MsIconThemeData(),
      inputDecorationTheme: MsInputDecorationTheme.light(),
      cardTheme: MsCardTheme(),
      textButtonTheme: msTextButtonTheme,
      bottomNavigationBarTheme:
          MsBottomNavigationTheme.lightBottomNavigationTheme,
      iconButtonTheme: MsIconButtonThemeData.light(),
      elevatedButtonTheme: MsElevatedButtonThemeData(),
      outlinedButtonTheme: MsOutlinedButtonThemeData(),
      snackBarTheme: MsSnackBarThemeData.light,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: MsColor.primary,
        brightness: Brightness.dark,
        surface: Colors.grey.shade900,
        onSurface: Colors.white70,
      ),
      appBarTheme: MsAppBarTheme.dark(),
      iconTheme: const MsIconThemeData(),
      textTheme: MsTextStyle.msTextStyle,
      inputDecorationTheme: MsInputDecorationTheme.dark(),
      cardTheme: MsCardTheme(),
      textButtonTheme: msTextButtonTheme,
      iconButtonTheme: MsIconButtonThemeData.dark(),
      elevatedButtonTheme: MsElevatedButtonThemeData(),
      outlinedButtonTheme: MsOutlinedButtonThemeData(),
      snackBarTheme: MsSnackBarThemeData.dark,
    );
  }
}
