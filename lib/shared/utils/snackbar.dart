import 'package:development_kit_flutter/shared/extensions/build_context.dart';
import 'package:flutter/material.dart';

import '../../config/theme/color.dart';

/// A utility class for showing different types of Snackbars.
class MsSnackBar {
  /*
   * ---> Shows a message SnackBar.
   */
  static void showMessage({
    required BuildContext context,
    required String message,
  }) {
    _showSnackBar(
      context,
      message,
      AppColors.onPrimaryFixedVariant,
      Icons.check_circle_outline,
      Colors.white, // Text/icon color
    );
  }

  /*
   * ---> Shows a success SnackBar.
   */
  static void showSuccess({
    required BuildContext context,
    required String message,
  }) {
    _showSnackBar(
      context,
      message,
      const Color(0xFF4CAF50), // A standard green for success
      Icons.check_circle_outline,
      Colors.white, // Text/icon color for success
    );
  }

  /*
   * ---> Shows a warning SnackBar.
   */
  static void showWarning({
    required BuildContext context,
    required String message,
  }) {
    _showSnackBar(
      context,
      message,
      const Color(0xFFFF8F00), // A standard orange for warning
      Icons.warning_amber_outlined,
      Colors.white, // Text/icon color for warning
    );
  }

  /*
   * ---> Shows an error SnackBar.
   */
  static void showError({
    required BuildContext context,
    String message = 'Something went wrong!',
  }) {
    _showSnackBar(
      context,
      message,
      const Color(0xFFD32F2F), // A standard red for error
      Icons.error_outline,
      Colors.white, // Text/icon color for error
    );
  }

  /*
   * ---> Shows a custom SnackBar.
   */
  static void showCustom(
    BuildContext context,
    String message, {
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
    IconData? icon,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
  }) {
    _showSnackBar(
      context,
      message,
      backgroundColor,
      icon,
      textColor,
      duration: duration,
      action: action,
    );
  }

  /*
   * ---> Private helper method to show the SnackBar.
   */

  ///
  static void _showSnackBar(
    BuildContext context,
    String message,
    Color backgroundColor,
    IconData? icon,
    Color textColor, {
    Duration duration = const Duration(seconds: 2),
    SnackBarAction? action,
  }) {
    // Ensure no other Snackbars are currently showing or queued
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor),
              const SizedBox(width: 8.0),
            ],
            Expanded(
              child: Text(
                message,
                style: context.titleSmall?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        action: action,
        behavior:
            SnackBarBehavior.floating, // Makes it float above bottom nav bar
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ), // Rounded corners
        margin: const EdgeInsets.all(16.0), // Margin from edges
      ),
    );
  }
}
