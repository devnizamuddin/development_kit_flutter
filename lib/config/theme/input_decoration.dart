part of 'theme.dart';

class AppInputDecorationTheme extends InputDecorationTheme {
  AppInputDecorationTheme.light({super.key})
    : super(
        filled: true,
        fillColor: AppColors.surfaceContainerHighest.withValues(alpha: 0.5),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        alignLabelWithHint:
            true, // Aligns label with hint text when not floating
        // Define the default border for all states
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.outline,
            width: 1,
          ), // Default border color
        ),

        // Specific border for enabled state (when not focused or error)
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.outline, width: 1),
        ),

        // Specific border for focused state
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 2,
          ), // Primary color border when focused
        ),

        // Specific border for error state (when not focused)
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.error,
            width: 2,
          ), // Error color border
        ),

        // Specific border for focused error state
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.error,
            width: 2,
          ), // Error color border when focused
        ),

        // Text styles for various parts of the input decoration
        labelStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurfaceVariant, // Label color
        ),
        floatingLabelStyle: AppTextStyle.light.labelSmall?.copyWith(
          // Smaller label when floating
          color: AppColors.primary, // Primary color for floating label
        ),
        hintStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurfaceVariant.withValues(
            alpha: 0.6,
          ), // Hint text color
        ),
        helperStyle: AppTextStyle.light.bodySmall?.copyWith(
          color: AppColors.onSurfaceVariant.withValues(
            alpha: 0.6,
          ), // Hint text color8), // Helper text color
        ),
        errorStyle: AppTextStyle.light.bodySmall?.copyWith(
          color: AppColors.error, // Error text color
          fontWeight: FontWeight.bold,
        ),
        prefixStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurface, // Prefix text color
        ),
        suffixStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurface, // Suffix text color
        ),
        counterStyle: AppTextStyle.light.bodySmall?.copyWith(
          color: AppColors.onSurfaceVariant, // Counter text color
        ),
      );

  AppInputDecorationTheme.dark({super.key})
    : super(
        // Global properties for all input fields
        filled: true,
        fillColor: AppColors.surfaceContainerHighest.withValues(alpha: 0.5),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        alignLabelWithHint: true,

        // Define the default border for all states
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.outline, width: 1),
        ),

        // Specific border for enabled state (when not focused or error)
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.outline, width: 1),
        ),

        // Specific border for focused state
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 2,
          ), // Primary color border when focused
        ),

        // Specific border for error state (when not focused)
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.error, width: 2),
        ),

        // Specific border for focused error state
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.error, width: 2),
        ),

        // Text styles for various parts of the input decoration
        labelStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurfaceVariant, // Label color
        ),
        floatingLabelStyle: AppTextStyle.light.labelSmall?.copyWith(
          // Smaller label when floating
          color: AppColors.primary, // Primary color for floating label
        ),
        hintStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurfaceVariant.withValues(
            alpha: 0.6,
          ), // Hint text color
        ),
        helperStyle: AppTextStyle.light.bodySmall?.copyWith(
          color: AppColors.onSurfaceVariant.withValues(
            alpha: 0.8,
          ), // Helper text color
        ),
        errorStyle: AppTextStyle.light.bodySmall?.copyWith(
          color: AppColors.error, // Error text color
          fontWeight: FontWeight.bold,
        ),
        prefixStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurface, // Prefix text color
        ),
        suffixStyle: AppTextStyle.light.bodyLarge?.copyWith(
          color: AppColors.onSurface, // Suffix text color
        ),
        counterStyle: AppTextStyle.light.bodySmall?.copyWith(
          color: AppColors.onSurfaceVariant, // Counter text color
        ),
      );
}
