import 'package:flutter/material.dart';

import '../../../config/theme/color.dart';

class MsTextButton extends StatelessWidget {
  const MsTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = AppColors.onPrimaryFixedVariant,
    this.backgroundColor,
    this.verticalPadding = 0,
    this.horizontalPadding = 8,
  });
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color textColor;
  final double verticalPadding;
  final double horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          )),
      child: Text(text),
    );
  }
}
