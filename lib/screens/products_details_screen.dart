// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant/models/home_screen_data/home_screen_data.dart';
import 'package:restaurant/models/home_screen_data/selected_index_screen.dart';
import 'package:restaurant/shared/bottom_nav_bar.dart';

class ProductsDetailsScreen extends StatefulWidget {
  ProductModel products;
  List<ProductModel> allProducts;

  ProductsDetailsScreen(
      {Key? key, required this.products, required this.allProducts})
      : super(key: key);

  @override
  State<ProductsDetailsScreen> createState() => _ProductsDetailsScreenState();
}

class _ProductsDetailsScreenState extends State<ProductsDetailsScreen> {
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
      body: _buildCarousel(context, selectedIndex, size),
      bottomNavigationBar: bottomNavBar(
        onTap: (index) => setState(() => selectedIndex = index),
      ),
    );
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex, Size size) {
    return PageView.builder(
      itemCount: widget.allProducts.length,
      controller:
          PageController(viewportFraction: 0.80, initialPage: selectedIndex),
      itemBuilder: (BuildContext context, int itemIndex) {
        return _boxCard(context, carouselIndex, itemIndex, size);
      },
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
              width: size.width * 0.75,
              height: size.height * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  colors: widget.allProducts[itemIndex].bgColors,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.allProducts[itemIndex].productImage,
                          scale: 0.45,
                        ),
                        const SizedBox(height: 26),
                        Text(
                          widget.allProducts[itemIndex].productName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.pink.shade200,
                              radius: 10,
                              child: const Icon(
                                Icons.done,
                                size: 11,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '${widget.allProducts[itemIndex].productSize},\t'
                              '${widget.allProducts[itemIndex].productCount}x \t'
                              '${widget.allProducts[itemIndex].productPrice}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Divider(
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Container()),
                              SizedBox(
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        widget.allProducts[itemIndex];

                                        setState(() {
                                          widget.allProducts[itemIndex]
                                              .productCount--;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      widget.allProducts[itemIndex].productCount
                                          .toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          widget.allProducts[itemIndex]
                                              .productCount++;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: Container()),
                              SizedBox(
                                child: Text(
                                  "${widget.allProducts[itemIndex].productPrice} * ${widget.allProducts[itemIndex].productCount}"
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
