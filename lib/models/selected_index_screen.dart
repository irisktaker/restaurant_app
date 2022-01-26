import 'package:flutter/material.dart';
import 'package:restaurant/screens/home/home_slide/home_slide_screen.dart';
import 'package:restaurant/screens/cart/cart_screen.dart';

int selectedIndex = 0;
selectedIndexScreen() {
  if (selectedIndex == 0) {
    return const HomePage();
  } else if (selectedIndex == 1) {
    return const CartScreen();
  } else {
    return Container(
      color: Colors.green.shade200,
    );
  }
}
