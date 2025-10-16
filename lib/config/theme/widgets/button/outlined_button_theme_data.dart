part of '../../theme.dart';

class MsOutlinedButtonThemeData extends OutlinedButtonThemeData {
  MsOutlinedButtonThemeData()
      : super(
            style: OutlinedButton.styleFrom(
          foregroundColor: MsColor.primary, // Text/icon color
          side: const BorderSide(
              color: MsColor.primary, width: 1.5), // Border color and width
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ));
}
