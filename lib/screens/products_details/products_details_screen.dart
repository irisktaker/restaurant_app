// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant/screens/home/home_screen_data.dart';
import 'package:restaurant/models/selected_index_screen.dart';

import 'package:restaurant/utils/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:restaurant/utils/buttons/add_to_cart_button.dart';
import 'package:restaurant/utils/stars_rating/stars_rating.dart';

class ProductsDetailsScreen extends StatefulWidget {
  ///
  int cardIndex;
  ProductModel products;
  List<ProductModel> allProducts;

  ProductsDetailsScreen({
    Key? key,
    required this.products,
    required this.allProducts,
    required this.cardIndex,
  }) : super(key: key);

  @override
  State<ProductsDetailsScreen> createState() => _ProductsDetailsScreenState();
}

class _ProductsDetailsScreenState extends State<ProductsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: productDetailsAppBar(context),
      body: Column(
        children: [
          _buildCarousel(context, selectedIndex, size),
          const SizedBox(height: 18),
          const StarsRating(),
          const SizedBox(height: 6),
          Align(
            alignment: Alignment.center,
            child: Text(
              'You have saved 0.54 (12%)',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const SizedBox(height: 18),
          addToCartButton(context),
        ],
      ),
      bottomNavigationBar: bottomNavBar(
        onTap: (index) => setState(() => selectedIndex = index),
      ),
    );
  }

  AppBar productDetailsAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_outlined, color: Colors.grey),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        widget.allProducts[widget.cardIndex].productName,
        style: const TextStyle(color: Colors.black),
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
    );
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex, Size size) {
    return SizedBox(
      width: size.width * 1,
      height: size.height * 0.55,
      child: PageView.builder(
        itemCount: widget.allProducts.length,
        controller: PageController(
            viewportFraction: 0.80, initialPage: widget.cardIndex),
        onPageChanged: (value) => setState(() => widget.cardIndex = value),
        itemBuilder: (BuildContext context, int itemIndex) {
          return _boxCard(context, carouselIndex, itemIndex, size);
        },
      ),
    );
  }

  Widget _boxCard(
      BuildContext context, int carouselIndex, int itemIndex, Size size) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            colors: widget.allProducts[itemIndex].bgColors,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
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
                            '${widget.allProducts[itemIndex].productPrice}'
                        .toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Divider(
                  height: 2,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Expanded(child: Container()),
                    SizedBox(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // widget.allProducts[itemIndex];

                              setState(
                                () {
                                  widget.allProducts[itemIndex].productCount <=
                                          0
                                      ? 0
                                      : widget.allProducts[itemIndex]
                                          .productCount--;
                                },
                              );
                            },
                            icon: const Icon(
                              Icons.remove_circle_outline,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            widget.allProducts[itemIndex].productCount
                                .toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 2),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.allProducts[itemIndex].productCount++;
                              });
                            },
                            icon: const Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(flex: 8, child: Container()),
                    SizedBox(
                      child: Text(
                        widget.allProducts[itemIndex].currency,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        (widget.allProducts[itemIndex].productPrice *
                                widget.allProducts[itemIndex].productCount)
                            .toStringAsFixed(2),
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
        ),
      ),
    );
  }
}

/// mvc  | mvp  | mvvc | Fiber |  bloc
/// bloc -> model -> class of objects
///       -> view -> ui
///       -> bloc -> business code
///       -> service -> api ..
/// 
///  search on flutter bloc 