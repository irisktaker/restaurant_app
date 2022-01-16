import 'package:flutter/material.dart';

import '../item_card.dart';

class HomeBarScreen {
  String productName;
  String productPrice;
  List<Color> bgColors;
  String productImage;
  // void Function()? onTap;

  HomeBarScreen({
    required this.productName,
    required this.productPrice,
    required this.bgColors,
    required this.productImage,
    // this.onTap
  });
}

class HomeBarItems {
  int index = 0;

  static BuildContext context = context;

  List<HomeBarScreen> smoothiesList = [
    HomeBarScreen(
      productName: 'watermelon',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFF26C9C), Color(0xFFEC90E9)],
      productImage: 'assets/images/Group 2137.png',
      // onTap: () => Navigator.push(
      //   context,
      //   PageRouteBuilder(
      //     pageBuilder: (c, a1, a2) => const ItemCard(),
      //     transitionsBuilder: (c, anim, a2, child) =>
      //         FadeTransition(opacity: anim, child: child),
      //     transitionDuration: const Duration(milliseconds: 500),
      //   ),
      // ),
    ),
    HomeBarScreen(
      productName: 'mango',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFFD9B8D), Color(0xFFFBBE7E)],
      productImage: 'assets/images/Group 2204.png',
    ),
    HomeBarScreen(
      productName: 'blueberry',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFA076E8), Color(0xFFB1C4F8)],
      productImage: 'assets/images/Group 2206.png',
    ),
    HomeBarScreen(
      productName: 'avocado',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFF5CCD92), Color(0xFFBFE89C)],
      productImage: 'assets/images/Group 2207.png',
    ),
    HomeBarScreen(
      productName: 'grape',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFA86FDA), Color(0xFFF5B9D5)],
      productImage: 'assets/images/Group 2208.png',
    ),
    HomeBarScreen(
      productName: 'apple',
      productPrice: '₹70.00',
      bgColors: const [Color(0xFFF4787C), Color(0xFFFBA6C6)],
      productImage: 'assets/images/apple.png',
    ),
    HomeBarScreen(
      productName: 'watermelon',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFF26C9C), Color(0xFFEC90E9)],
      productImage: 'assets/images/watermelon.png',
    ),
    HomeBarScreen(
      productName: 'mango',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFFD9B8D), Color(0xFFFBBE7E)],
      productImage: 'assets/images/mango.png',
    ),
    HomeBarScreen(
      productName: 'blueberry',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFA076E8), Color(0xFFB1C4F8)],
      productImage: 'assets/images/blueberry.png',
    ),
    HomeBarScreen(
      productName: 'avocado',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFF5CCD92), Color(0xFFBFE89C)],
      productImage: 'assets/images/avocado.png',
    ),
    HomeBarScreen(
      productName: 'grapes',
      productPrice: '₹50.00',
      bgColors: const [Color(0xFFA86FDA), Color(0xFFF5B9D5)],
      productImage: 'assets/images/grapes.png',
    ),
    HomeBarScreen(
      productName: 'apple',
      productPrice: '₹70.00',
      bgColors: const [Color(0xFFF4787C), Color(0xFFFBA6C6)],
      productImage: 'assets/images/apple.png',
    ),
  ];

  // String? getProductName() => smoothiesList[index].productName;
  // String? getProductPrice() => smoothiesList[index].productPrice;
  // Color? getProductBGColor() => smoothiesList[index].bgColor;
  // String? getProductImage() => smoothiesList[index].productImage;
}
