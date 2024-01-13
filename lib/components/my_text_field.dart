import 'package:flutter/material.dart';
import 'package:vitcl/constants/colors.dart';
import 'package:vitcl/constants/constants.dart';

class MyTextField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType? keyboard;
  final String hintText;
  final String labelText;
  final bool autoCorrect;
  final bool enableSuggestions;
  final Icon? icon;
  final double? width;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.obscureText = false,
    this.keyboard,
    this.autoCorrect = true,
    this.enableSuggestions = true,
    this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width != null) ? width : signInTextBoxSize,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          onChanged: (value) {},
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboard,
          enableSuggestions: enableSuggestions,
          autocorrect: autoCorrect,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
            prefixIcon: icon,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
