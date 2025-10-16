import 'package:flutter/material.dart';

import '../../../extensions/build_context.dart';

class MsSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool value) onChanged;

  const MsSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 10,
      children: [
        Text(title, style: context.titleMedium),
        Switch(value: value, onChanged: onChanged),
      ],
    );
  }
}
