import 'package:flutter/material.dart';
import 'package:restaurant/screens/home_screen_data/bottom_nav_bar.dart';

import 'home_screen_data/selected_index_screen.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                width: size.width * 0.70,
                height: size.height * 0.60,
                decoration: BoxDecoration(
                  color: Colors.pink.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
