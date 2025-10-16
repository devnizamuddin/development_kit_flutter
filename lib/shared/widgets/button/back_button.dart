import 'package:flutter/material.dart';

class MsBackButton extends StatelessWidget {
  final Color color;
  final double size;
  final void Function()? onPressed;
  const MsBackButton({
    super.key,
    this.size = 24,
    this.onPressed,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        size: size,
        color: color,
        Icons.arrow_circle_left,
      ),
    );
  }
}
