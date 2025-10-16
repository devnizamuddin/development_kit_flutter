import 'package:flutter/material.dart';

class MsElevatedButton extends StatelessWidget {
  const MsElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.verticalPadding = 12,
    this.horizontalPadding = 40,
    this.foregroundColor,
    this.backgroundColor,
  });
  final VoidCallback onPressed;
  final String text;
  final double verticalPadding;
  final double horizontalPadding;
  final Color? backgroundColor;
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
      ),
      child: Text(text),
    );
  }
}
