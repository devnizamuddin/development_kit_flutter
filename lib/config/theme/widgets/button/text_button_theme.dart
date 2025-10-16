import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextButtonThemeData msTextButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStateProperty.resolveWith((states) {
      // Default text style for the button
      return GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
    }),
    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey; // Disabled color
      }
      if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.pressed)) {
        return Colors.blue.shade700; // Hover/pressed color
      }
      return Colors.blue; // Default color
    }),
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.shade200; // Disabled background
      }
      if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.pressed)) {
        return Colors.blue.shade100; // Hover/pressed background
      }
      return Colors.transparent; // Default background
    }),
    padding: WidgetStateProperty.resolveWith((states) {
      return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    }),
    shape: WidgetStateProperty.resolveWith((states) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      );
    }),
  ),
);
