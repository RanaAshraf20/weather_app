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
    this.enabled = true,
    this.borderColor = Colors.blue,
    this.disabledBorderColor = Colors.blue,
    this.disabledborderRadius = 0,
    this.enabledBorderColor = Colors.blue,
    this.enabledborderRadius = 0,
    this.focusedborderRadius = 0,
    this.contentPadding,
    this.suffixIconColor= Colors.blue,
  });

  final TextEditingController? controller;
  final String hintText;
  final Color hintColor;
  final bool enabled;
  final Color borderColor;
  final double borderRadius;
  final Color disabledBorderColor;
  final double disabledborderRadius;
  final Color enabledBorderColor;
  final double enabledborderRadius;
  final Color focusedBorderColor;
  final double focusedborderRadius;
  final ValueChanged<String> onSubmitted;
  final String label;
  final Color labelColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      controller: controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        suffixIconColor: suffixIconColor,
        label: Text(label),
        labelStyle: TextStyle(color: labelColor),
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),
        contentPadding: contentPadding,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor)),
        // enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(enabledborderRadius),
        //     borderSide: BorderSide(color: enabledBorderColor)),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(focusedborderRadius),
        //   borderSide: BorderSide(color: focusedBorderColor),
        // ),
        // disabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(disabledborderRadius),
        //     borderSide: BorderSide(color: disabledBorderColor)),
      ),
    );
  }
}
