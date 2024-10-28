import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    this.controller,
    required this.onSubmitted,
    this.hintText = '',
    this.hintColor = Colors.grey,
    this.focusedBorderColor = Colors.blue,
    this.borderRadius = 0,
    this.label = '',
    this.labelColor = Colors.blue,
    this.suffixIcon,
  });

  final TextEditingController? controller;
  final String hintText;
  final Color hintColor;
  final Color focusedBorderColor;
  final double borderRadius;
  final ValueChanged<String> onSubmitted;
  final String label;
  final Color labelColor;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          suffixIcon: Icon(suffixIcon),
          label: Text(label),
          labelStyle: TextStyle(color: labelColor),
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: focusedBorderColor))),
    );
  }
}
