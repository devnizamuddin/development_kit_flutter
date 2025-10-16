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

class AppTheme {
  /*
   * ---> Unused variables for input decoration borders. 
   */

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        // Primary colors
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        primaryContainer: AppColors.primaryContainer,
        onPrimaryContainer: AppColors.onPrimaryContainer,

        // Secondary colors
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        secondaryContainer: AppColors.secondaryContainer,
        onSecondaryContainer: AppColors.onSecondaryContainer,

        // Tertiary colors
        tertiary: AppColors.tertiary,
        onTertiary: AppColors.onTertiary,
        tertiaryContainer: AppColors.tertiaryContainer,
        onTertiaryContainer: AppColors.onTertiaryContainer,

        // Error colors
        error: AppColors.error,
        onError: AppColors.onError,
        errorContainer: AppColors.errorContainer,
        onErrorContainer: AppColors.onErrorContainer,

        // Surface colors (for backgrounds, cards, etc.)
        surface: AppColors.surface,
        onSurface: AppColors.onSurface,
        surfaceDim: AppColors.surfaceDim,
        surfaceBright: AppColors.surfaceBright,
        surfaceContainerLowest: AppColors.surfaceContainerLowest,
        surfaceContainerLow: AppColors.surfaceContainerLow,
        surfaceContainer: AppColors.surfaceContainer,
        surfaceContainerHigh: AppColors.surfaceContainerHigh,
        surfaceContainerHighest: AppColors.surfaceContainerHighest,

        // Other colors
        onSurfaceVariant: AppColors.onSurfaceVariant,
        outline: AppColors.outline,
        outlineVariant: AppColors.outlineVariant,
        shadow: AppColors.shadow,
        scrim: AppColors.scrim,
        inverseSurface: AppColors.inverseSurface,
        onInverseSurface: AppColors.onInverseSurface,
        inversePrimary: AppColors.inversePrimary,
        surfaceTint: AppColors.surfaceTint,
        // Brightness for the color scheme
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: AppColors.background,
      tabBarTheme: TabBarThemeData(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.blueGrey.shade200,
        labelStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: Colors.amber,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      appBarTheme: MsAppBarTheme.light(),
      textTheme: AppTextStyle.light,
      iconTheme: const MsIconThemeData(),
      inputDecorationTheme: AppInputDecorationTheme.light(),
      cardTheme: MsCardTheme(),
      textButtonTheme: msTextButtonTheme,
      bottomNavigationBarTheme:
          AppBottomNavigationTheme.lightBottomNavigationTheme,
      iconButtonTheme: MsIconButtonThemeData.light(),
      elevatedButtonTheme: MsElevatedButtonThemeData(),
      outlinedButtonTheme: MsOutlinedButtonThemeData(),
      snackBarTheme: AppSnackBarThemeData.light,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        surface: Colors.grey.shade900,
        onSurface: Colors.white70,
      ),
      appBarTheme: MsAppBarTheme.dark(),
      iconTheme: const MsIconThemeData(),
      textTheme: AppTextStyle.dark,
      inputDecorationTheme: AppInputDecorationTheme.dark(),
      cardTheme: MsCardTheme(),
      textButtonTheme: msTextButtonTheme,
      iconButtonTheme: MsIconButtonThemeData.dark(),
      elevatedButtonTheme: MsElevatedButtonThemeData(),
      outlinedButtonTheme: MsOutlinedButtonThemeData(),
      snackBarTheme: AppSnackBarThemeData.dark,
    );
  }
}
