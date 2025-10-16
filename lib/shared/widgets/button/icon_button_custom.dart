import 'package:flutter/material.dart';

import '../../../config/theme/color.dart';

class CustomIconButton extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color iconColor;
  final double elevation;
  final ShapeBorder? shape;
  final EdgeInsets padding;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    this.shape = const CircleBorder(),
    this.size = 24,
    required this.icon,
    this.iconColor = Colors.white,
    this.elevation = 2,
    this.padding = const EdgeInsets.all(8),
    this.backgroundColor = AppColors.primary,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      shape: shape,
      type: MaterialType.button,
      elevation: elevation,
      child: InkWell(
        onTap: onPressed,
        customBorder: shape,
        child: Padding(
          padding: padding,
          child: Icon(icon, size: size, color: iconColor),
        ),
      ),
    );
  }
}
