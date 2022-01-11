import 'package:flutter/material.dart';

TextButton buildTextButton({
  required String? text,
  required void Function()? onPressed,
  Color? color,
  double? fontSize,
}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      text!,
      style: TextStyle(color: color, fontSize: fontSize),
    ),
  );
}
