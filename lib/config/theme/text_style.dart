import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MsTextStyle {
  static final msTextStyle = TextTheme(
    /*
     * ========================================================================
     *  Body TextStyle
     *  UseCase: long text, descriptions, paragraphs
     * ========================================================================
     */
    bodyLarge: GoogleFonts.inter(
      fontSize: 16,
      height: 1.5,
      color: Colors.black87,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 14,
      height: 1.5,
      color: Colors.black87,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12,
      height: 1.4,
      color: Colors.black54,
    ),

    /*
     * ========================================================================
     *  Label TextStyle
     *  UseCase: buttons, chips, captions, tags, prices
     * ========================================================================
     */
    labelLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: Colors.black54,
    ),

    /*
     * ========================================================================
     *  Title TextStyle
     *  UseCase: AppBar titles, card titles, section headers
     * ========================================================================
     */
    titleLarge: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),

    /*
     * ========================================================================
     *  Headline TextStyle
     *  UseCase: screen headers, feature highlights, banners
     * ========================================================================
     */
    headlineLarge: GoogleFonts.poppins(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),

    /*
     * ========================================================================
     *  Display TextStyle
     *  UseCase: hero banners, splash screens, very large text
     * ========================================================================
     */
    displayLarge: GoogleFonts.poppins(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  );
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      /*
       * ========================================================================
       *  Body TextStyle
       *  UseCase: long text, descriptions, paragraphs
       * ========================================================================
       */
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        height: 1.5,
        color: Colors.white70,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        height: 1.5,
        color: Colors.white70,
        textStyle: const TextStyle(overflow: TextOverflow.ellipsis),
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        height: 1.4,
        color: Colors.white60,
      ),

      /*
       * ========================================================================
       *  Label TextStyle
       *  UseCase: buttons, chips, captions, tags, prices
       * ========================================================================
       */
      labelLarge: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      labelMedium: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),
      labelSmall: GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Colors.white60,
      ),

      /*
       * ========================================================================
       *  Title TextStyle
       *  UseCase: AppBar titles, card titles, section headers
       * ========================================================================
       */
      titleLarge: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white70,
      ),

      /*
       * ========================================================================
       *  Headline TextStyle
       *  UseCase: screen headers, feature highlights, banners
       * ========================================================================
       */
      headlineLarge: GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineSmall: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),

      /*
       * ========================================================================
       *  Display TextStyle
       *  UseCase: hero banners, splash screens, very large text
       * ========================================================================
       */
      displayLarge: GoogleFonts.poppins(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
