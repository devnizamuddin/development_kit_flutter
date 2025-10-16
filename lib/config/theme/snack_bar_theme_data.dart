import 'package:flutter/material.dart';

import 'color.dart';

class AppSnackBarThemeData {
  /// Custom light theme for snackbars
  static SnackBarThemeData light = SnackBarThemeData(
    backgroundColor: AppColors.primary, // Use the new primary color
    contentTextStyle: const TextStyle(
      color: Colors.white, // White text on the primary color for good contrast
      fontSize: 14,
    ),
    actionTextColor: Colors.white, // Action text should also be white
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    behavior: SnackBarBehavior.floating,
    elevation: 4,
  );

  /// Custom dark theme for snackbars
  static SnackBarThemeData dark = SnackBarThemeData(
    backgroundColor: Colors.grey.shade200,
    contentTextStyle: const TextStyle(color: Colors.black, fontSize: 14),
    actionTextColor: AppColors.primary, // Use the primary color for actions
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    behavior: SnackBarBehavior.floating,
    elevation: 4,
  );
}
