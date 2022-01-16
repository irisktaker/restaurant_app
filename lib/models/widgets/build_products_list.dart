import 'package:flutter/material.dart';
import 'package:restaurant/models/home_screen_data/home_screen_data.dart';
import 'package:restaurant/screens/products_details_screen.dart';

Column buildProductsList(ProductModel content, BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (content) => const ProductsDetailsScreen()));
              },
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: content.bgColors,
                  ),
                  borderRadius: BorderRadius.circular(37.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        content.productName,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        content.productPrice,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'cocogoose',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 75,
            height: 75,
            child: Image.asset(
              content.productImage,
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
    ],
  );
}
