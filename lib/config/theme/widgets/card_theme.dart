part of '../theme.dart';

class MsCardTheme extends CardThemeData {
  MsCardTheme()
    : super(
        color: AppColors.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.all(8),
      );
}
