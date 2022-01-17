import 'package:flutter/material.dart';

ElevatedButton buildElevatedButton({
  required void Function()? onPressed,
  List<Color>? colors = const [Colors.red, Colors.yellow],
  double? width = double.infinity,
  double? height = 44,
  required String? btnText,
  double radius = 16,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    ),
    child: Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors!,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: Text(
          btnText!,
          style: const TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            // decoration: TextDecoration(),
          ),
        ),
      ),
    ),
  );
}
