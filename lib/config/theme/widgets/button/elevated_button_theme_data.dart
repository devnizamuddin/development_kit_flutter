part of '../../theme.dart';

class MsElevatedButtonThemeData extends ElevatedButtonThemeData {
  MsElevatedButtonThemeData()
      : super(
            style: ElevatedButton.styleFrom(
          backgroundColor: MsColor.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
          textStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ));
}
