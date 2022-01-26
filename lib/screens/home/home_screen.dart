import 'package:flutter/material.dart';

import 'package:restaurant/models/selected_index_screen.dart';
import 'package:restaurant/utils/bottom_navigation_bar/bottom_nav_bar.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Map> addItem = [
  //   {
  //     'productName': 'Product 1',
  //     'productPrice': '99.00 JD',
  //     'bgColor': Colors.green.shade200,
  //     'productImage': 'assets/images/Group 2137.png',
  //   },
  //   {
  //     'productName': 'Product 2',
  //     'productPrice': '19.00 JD',
  //     'bgColor': Colors.red.shade200,
  //     'productImage': 'assets/images/Group 2204.png',
  //   },
  //   {
  //     'productName': 'Product 3',
  //     'productPrice': '39.00 JD',
  //     'bgColor': Colors.purple.shade200,
  //     'productImage': 'assets/images/Group 2207.png',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedIndexScreen(),
      bottomNavigationBar: bottomNavBar(
        onTap: (index) => setState(() => selectedIndex = index),
      ),
    );
  }
}
