part of 'theme.dart';

class MsInputDecorationTheme extends InputDecorationTheme {
  MsInputDecorationTheme.light()
      : super(
          filled: true,
          fillColor: MsColor.surfaceContainerHighest.withValues(alpha: 0.5),
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
                color: MsColor.outline, width: 1), // Default border color
          ),

          // Specific border for enabled state (when not focused or error)
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: MsColor.outline, width: 1),
          ),

          // Specific border for focused state
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                color: MsColor.primary,
                width: 2), // Primary color border when focused
          ),

          // Specific border for error state (when not focused)
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                color: MsColor.error, width: 2), // Error color border
          ),

          // Specific border for focused error state
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                color: MsColor.error,
                width: 2), // Error color border when focused
          ),

          // Text styles for various parts of the input decoration
          labelStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurfaceVariant, // Label color
          ),
          floatingLabelStyle: MsTextStyle.msTextStyle.labelSmall?.copyWith(
            // Smaller label when floating
            color: MsColor.primary, // Primary color for floating label
          ),
          hintStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurfaceVariant
                .withValues(alpha: 0.6), // Hint text color
          ),
          helperStyle: MsTextStyle.msTextStyle.bodySmall?.copyWith(
            color: MsColor.onSurfaceVariant.withValues(
                alpha: 0.6), // Hint text color8), // Helper text color
          ),
          errorStyle: MsTextStyle.msTextStyle.bodySmall?.copyWith(
            color: MsColor.error, // Error text color
            fontWeight: FontWeight.bold,
          ),
          prefixStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurface, // Prefix text color
          ),
          suffixStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurface, // Suffix text color
          ),
          counterStyle: MsTextStyle.msTextStyle.bodySmall?.copyWith(
            color: MsColor.onSurfaceVariant, // Counter text color
          ),
        );

  MsInputDecorationTheme.dark()
      : super(
          // Global properties for all input fields
          filled: true,
          fillColor: MsColor.surfaceContainerHighest.withValues(alpha: 0.5),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 12,
          ),
          alignLabelWithHint: true,

          // Define the default border for all states
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: MsColor.outline, width: 1),
          ),

          // Specific border for enabled state (when not focused or error)
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: MsColor.outline, width: 1),
          ),

          // Specific border for focused state
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                color: MsColor.primary,
                width: 2), // Primary color border when focused
          ),

          // Specific border for error state (when not focused)
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: MsColor.error, width: 2),
          ),

          // Specific border for focused error state
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: MsColor.error, width: 2),
          ),

          // Text styles for various parts of the input decoration
          labelStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurfaceVariant, // Label color
          ),
          floatingLabelStyle: MsTextStyle.msTextStyle.labelSmall?.copyWith(
            // Smaller label when floating
            color: MsColor.primary, // Primary color for floating label
          ),
          hintStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurfaceVariant
                .withValues(alpha: 0.6), // Hint text color
          ),
          helperStyle: MsTextStyle.msTextStyle.bodySmall?.copyWith(
            color: MsColor.onSurfaceVariant
                .withValues(alpha: 0.8), // Helper text color
          ),
          errorStyle: MsTextStyle.msTextStyle.bodySmall?.copyWith(
            color: MsColor.error, // Error text color
            fontWeight: FontWeight.bold,
          ),
          prefixStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurface, // Prefix text color
          ),
          suffixStyle: MsTextStyle.msTextStyle.bodyLarge?.copyWith(
            color: MsColor.onSurface, // Suffix text color
          ),
          counterStyle: MsTextStyle.msTextStyle.bodySmall?.copyWith(
            color: MsColor.onSurfaceVariant, // Counter text color
          ),
        );
}
