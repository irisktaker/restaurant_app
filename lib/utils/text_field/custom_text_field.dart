import 'package:flutter/material.dart';

TextField buildTextField({
  TextEditingController? controller,
  required TextInputType? inputType,
  required String? text,
  bool? obscureText = false,
  Widget? suffixIcon,
  String? errorText,
}) {
  return TextField(
    controller: controller,
    keyboardType: inputType,
    cursorColor: Colors.green,
    style: const TextStyle(
      color: Color(0xFF474747),
    ),
    obscureText: obscureText!,
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      hintText: text,
      errorText: errorText,
      hintStyle: const TextStyle(
        color: Color(0xFF474747),
      ),
      border: const UnderlineInputBorder(
        borderSide: BorderSide(),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
    ),
  );
}
