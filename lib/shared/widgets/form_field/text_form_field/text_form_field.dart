import 'package:flutter/material.dart';

class MsTextFormField extends StatelessWidget {
  const MsTextFormField({
    Key? key,
    this.label,
    this.validationText,
    this.controller,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIcon,
    this.prefixIconColor,
    this.focusNode,
  }) : super(key: key);

  final String? label;
  final String? validationText;
  final TextEditingController? controller;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          color: prefixIconColor,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: suffixIconColor,
        ),
        label: Text(label ?? ''),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validationText;
        } else {
          return null;
        }
      },
    );
  }
}
