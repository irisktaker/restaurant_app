import 'package:flutter/material.dart';

  ElevatedButton buildElevatedButton({
    required void Function()? onPressed,
    Color gradientFirstColor = Colors.red,
    Color gradientSecondColor = Colors.yellow,
    double? width = double.infinity,
    double? height = 40,
    required String? btnText,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientFirstColor, gradientSecondColor],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: Text(
            btnText!,
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }