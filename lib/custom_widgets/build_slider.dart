import 'package:flutter/material.dart';

InkWell buildSlider(
  BuildContext context, {
  // required void Function()? onTap,
  required Widget? navigate,
  required Color? color,
}) {
  return InkWell(
    onTap: () => Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (c, a1, a2) => navigate!,
        transitionsBuilder: (c, anim, a2, child) =>
            FadeTransition(opacity: anim, child: child),
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ),
    child: Container(
      width: 49,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
