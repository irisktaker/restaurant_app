import 'package:flutter/material.dart';

TextField buildTextField({
  TextEditingController? controller,
  required TextInputType? inputType,
  required String? text,
  bool? obscureText = false,
}) {
  return TextField(
    controller: controller,
    keyboardType: inputType,
    cursorColor: Colors.green,
    obscureText: obscureText!,
    decoration: InputDecoration(
      hintText: text,
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
    ),
  );
}
