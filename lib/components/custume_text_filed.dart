// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

bool headine = true;

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({
    required this.hintText,
    required this.obscureText,
    required this.onChanged,
    this.inputType,
  });
  Function(String)? onChanged;
  String? hintText;
  bool? obscureText;
  TextInputType? inputType;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      obscureText: obscureText!,
    );
  }
}
