import 'package:flutter/material.dart';

import '../../extensions/build_context.dart';

class ProfileMenuButton extends StatelessWidget {
  const ProfileMenuButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.menuIcon,
    required this.actionIcon,
  });
  final IconData menuIcon;
  final IconData actionIcon;
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(menuIcon, size: 20),
              const SizedBox(width: 8),
              Text(text, style: context.labelLarge),
              const Spacer(),
              Icon(actionIcon, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
