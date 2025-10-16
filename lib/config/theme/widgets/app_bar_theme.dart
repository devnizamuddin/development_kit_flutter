part of '../theme.dart';

class MsAppBarTheme extends AppBarTheme {
  MsAppBarTheme.light({super.key})
    : super(
        backgroundColor:
            AppColors.primary, // AppBar background matches primary color
        foregroundColor: AppColors.onPrimary, // Text/icon color on AppBar
        elevation: 4, // Subtle shadow below the AppBar
        centerTitle: true, // Center the title by default
        titleTextStyle: AppTextStyle.light.titleLarge?.copyWith(
          // Use titleLarge from textTheme
          color: AppColors
              .onPrimary, // Ensure title color contrasts with AppBar background
          fontWeight: FontWeight.bold,
        ),

        iconTheme: const IconThemeData(
          // Theme for icons in the AppBar (e.g., leading, actions)
          color: AppColors.onPrimary,
        ),
        actionsIconTheme: const IconThemeData(
          // Theme for icons specifically in actions
          color: AppColors.onPrimary,
        ),
      );

  MsAppBarTheme.dark({super.key})
    : super(
        backgroundColor: AppColors
            .surfaceContainerHighest, // A darker background for dark theme
        foregroundColor: AppColors.onSurface, // Text/icon color on AppBar
        elevation: 4,
        centerTitle: true,
        titleTextStyle: AppTextStyle.dark.titleLarge?.copyWith(
          color: AppColors
              .onSurface, // Ensure title color contrasts with AppBar background
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: AppColors.onSurface),
        actionsIconTheme: const IconThemeData(color: AppColors.onSurface),
      );
}
