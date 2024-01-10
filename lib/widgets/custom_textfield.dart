import 'package:flutter/material.dart';

class CustomTextFieldtow extends StatelessWidget {
  const CustomTextFieldtow({
    this.hintText,
    required this.onChanged,
    this.suffix,
  });

  final String? hintText;
  final Icon? suffix;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: suffix,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 215, 176, 255),
          ),
        ),
      ),
    );
  }
}
