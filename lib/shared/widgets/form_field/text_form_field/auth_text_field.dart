import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    this.label,
    this.hintText,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
  });

  final String? label;
  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        suffixIcon: suffixIcon,
        label: Text(label ?? ''),
        fillColor: Colors.white,
        prefixIcon: Icon(prefixIcon),
        contentPadding: const EdgeInsets.all(12),
      ),
    );
  }
}
