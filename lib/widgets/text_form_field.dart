import 'package:flutter/material.dart';

class EnhancedTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?) validator;
  final TextEditingController controller;
  const EnhancedTextFormField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.validator,
      required this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      // keyboardType: TextInputType.numberWithOptions(),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
