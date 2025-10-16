import 'package:flutter/material.dart';

import '../../extensions/build_context.dart';

class MsIconButton extends StatelessWidget {
  final double? padding;
  final Color? iconColor;
  final IconData iconData;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const MsIconButton({
    super.key,
    this.padding,
    this.iconColor,
    this.backgroundColor,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        padding: EdgeInsets.all(padding ?? 8),
        foregroundColor: iconColor ?? Colors.white,
        backgroundColor: backgroundColor ?? context.primaryColor,
      ),
      icon: Icon(iconData, size: 16),
    );
  }
}

enum IconButtonType { background }
