import 'package:flutter/material.dart';

class HomeBarScreen {
  String? productName;
  String? productPrice;
  Color? bgColor;
  String? productImage;

  HomeBarScreen(
      {this.productName, this.productPrice, this.bgColor, this.productImage});
}

class HomeBarItems {
  int index = 0;

  List<HomeBarScreen> smoothiesList = [
    HomeBarScreen(
      productName: 'Product 1',
      productPrice: '99.00 JD',
      bgColor: Colors.green.shade200,
      productImage: 'assets/images/Group 2137.png',
    ),
    HomeBarScreen(
      productName: 'Product 2',
      productPrice: '19.00 JD',
      bgColor: Colors.red.shade200,
      productImage: 'assets/images/Group 2204.png',
    ),
    HomeBarScreen(
      productName: 'Product 3',
      productPrice: '99.00 JD',
      bgColor: Colors.yellow.shade200,
      productImage: 'assets/images/Group 2207.png',
    ),
    HomeBarScreen(
      productName: 'Product 4',
      productPrice: '49.00 JD',
      bgColor: Colors.purple.shade200,
      productImage: 'assets/images/Group 2208.png',
    ),
  ];

  // String? getProductName() => smoothiesList[index].productName;
  // String? getProductPrice() => smoothiesList[index].productPrice;
  // Color? getProductBGColor() => smoothiesList[index].bgColor;
  // String? getProductImage() => smoothiesList[index].productImage;
}
