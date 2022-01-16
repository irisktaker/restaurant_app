import 'package:flutter/material.dart';

class ProductModel {
  int index = 0;

  String productName;
  String productPrice;
  List<Color> bgColors;
  String productImage;

  ProductModel({
    required this.productName,
    required this.productPrice,
    required this.bgColors,
    required this.productImage,
  });

  // static BuildContext context = context;

  // String? getProductName() => smoothiesList[index].productName;
  // String? getProductPrice() => smoothiesList[index].productPrice;
  // Color? getProductBGColor() => smoothiesList[index].bgColor;
  // String? getProductImage() => smoothiesList[index].productImage;
}
