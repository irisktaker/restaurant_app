// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant/models/home_screen_data/home_screen_data.dart';

class ProductsDetailsScreen extends StatelessWidget {
  ProductModel products;
  List<ProductModel> allProducts;

  ProductsDetailsScreen(
      {Key? key, required this.products, required this.allProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Water Melon',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 6),
        ],
      ),
      body: _buildCarousel(context, 0, size),
    );
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex, Size size) {
    return SizedBox(
      height: size.height * 0.65,
      child: PageView.builder(
        itemCount: allProducts.length,
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (BuildContext context, int itemIndex) {
          return _boxCard(context, carouselIndex, itemIndex, size);
        },
      ),
    );
  }

  Widget _boxCard(
      BuildContext context, int carouselIndex, int itemIndex, Size size) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              width: size.width * 0.70,
              height: size.height * 0.60,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
