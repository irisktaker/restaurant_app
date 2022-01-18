import 'package:flutter/material.dart';

class ProductModel {
  int index = 0;
  
  String productName;
  double productPrice;
  List<Color> bgColors;
  String productImage;
  String productSize;
  int productCount;
  String currency;

  ProductModel({
    required this.productName,
    required this.productPrice,
    required this.bgColors,
    required this.productImage,
    required this.productSize,
    required this.productCount,
    required this.currency,
  });

  // static BuildContext context = context;

  // String? getProductName() => smoothiesList[index].productName;
  // String? getProductPrice() => smoothiesList[index].productPrice;
  // Color? getProductBGColor() => smoothiesList[index].bgColor;
  // String? getProductImage() => smoothiesList[index].productImage;
}
