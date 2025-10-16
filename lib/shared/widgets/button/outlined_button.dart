import 'package:flutter/material.dart';

class MsOutlinedButton extends StatelessWidget {
  const MsOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.verticalPadding = 12,
    this.horizontalPadding = 40,
  });
  final VoidCallback onPressed;
  final String text;
  final double horizontalPadding;
  final double verticalPadding;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
      ),
      child: Text(text),
    );
  }
}
