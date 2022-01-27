import 'package:flutter/material.dart';
import 'package:restaurant/screens/cart/cart_screen.dart';
import 'package:restaurant/screens/home/data/smoothies_list.dart';
import 'custom_elevated_button.dart';

Align addToCartButton(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: buildElevatedButton(
      width: 200,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (c, a1, a2) => CartScreen(
              productList: smoothiesList,
            ),
            transitionsBuilder: (c, anim, a2, child) =>
                FadeTransition(opacity: anim, child: child),
            transitionDuration: const Duration(milliseconds: 500),
          ),
        );
      },
      btnText: 'Add to Cart',
      colors: [
        const Color(0xFFF46186),
        const Color(0xFFEE87D7),
      ],
      radius: 40,
    ),
  );
}
