import 'package:development_kit_flutter/config/theme/color.dart';
import 'package:flutter/material.dart';

class ObscureButton extends StatefulWidget {
  final void Function(bool isHidden) onChange;
  final bool? initialValue;

  const ObscureButton({super.key, required this.onChange, this.initialValue});

  @override
  State<ObscureButton> createState() => _ObscureButtonState();
}

class _ObscureButtonState extends State<ObscureButton> {
  bool? isHidden;
  @override
  Widget build(BuildContext context) {
    isHidden ??= widget.initialValue ?? true;
    return InkWell(
      onTap: () {
        setState(() {
          isHidden = !(isHidden!);
        });
        widget.onChange(isHidden!);
      },
      child: Icon(
        color: AppColors.onPrimaryFixedVariant,
        isHidden! ? Icons.visibility : Icons.visibility_off,
      ),
    );
  }
}
