import 'package:flutter/material.dart';
import 'package:restaurant/screens/home_slide_screen.dart';
import 'package:restaurant/screens/my_cart_screen.dart';

int selectedIndex = 0;
selectedIndexScreen() {
  if (selectedIndex == 0) {
    return const HomePage();
  } else if (selectedIndex == 1) {
    return const MyCart();
  } else {
    return Container(
      color: Colors.green.shade200,
    );
  }
}