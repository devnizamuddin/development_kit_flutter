part of '../theme.dart';

class MsAppBarTheme extends AppBarTheme {
  MsAppBarTheme.light()
      : super(
          backgroundColor:
              MsColor.primary, // AppBar background matches primary color
          foregroundColor: MsColor.onPrimary, // Text/icon color on AppBar
          elevation: 4, // Subtle shadow below the AppBar
          centerTitle: true, // Center the title by default
          titleTextStyle: MsTextStyle.msTextStyle.titleLarge?.copyWith(
            // Use titleLarge from textTheme
            color: MsColor
                .onPrimary, // Ensure title color contrasts with AppBar background
            fontWeight: FontWeight.bold,
          ),

          iconTheme: const IconThemeData(
            // Theme for icons in the AppBar (e.g., leading, actions)
            color: MsColor.onPrimary,
          ),
          actionsIconTheme: const IconThemeData(
            // Theme for icons specifically in actions
            color: MsColor.onPrimary,
          ),
        );

  MsAppBarTheme.dark()
      : super(
          backgroundColor: MsColor
              .surfaceContainerHighest, // A darker background for dark theme
          foregroundColor: MsColor.onSurface, // Text/icon color on AppBar
          elevation: 4,
          centerTitle: true,
          titleTextStyle: MsTextStyle.msTextStyle.titleLarge?.copyWith(
            color: MsColor
                .onSurface, // Ensure title color contrasts with AppBar background
            fontWeight: FontWeight.bold,
          ),
          iconTheme: const IconThemeData(
            color: MsColor.onSurface,
          ),
          actionsIconTheme: const IconThemeData(
            color: MsColor.onSurface,
          ),
        );
}
