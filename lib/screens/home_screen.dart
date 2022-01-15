import 'package:flutter/material.dart';
import 'package:restaurant/screens/home_screen_data/home_screen_data.dart';

import 'home_screen_data/selected_index_screen.dart';

HomeBarItems homeBarItems = HomeBarItems();

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Jusbar',
          style: TextStyle(color: Colors.grey, fontFamily: 'Roboto'),
        ),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              topTabTitles(),
              const SizedBox(height: 24),
              selectedIndexScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() => selectedIndex = index),
        currentIndex: selectedIndex,
        iconSize: 26,
        selectedItemColor: const Color(0xFFA7BBDB),
        unselectedItemColor: const Color(0xFFD3D8E0),
      ),
    );
  }

  Row topTabTitles() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {},
              child: const Text(
                'smoothies',
                style: TextStyle(
                  color: Color(0xFF676767),
                  fontFamily: 'cocogoose',
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 2),
            const Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: CircleAvatar(
                backgroundColor: Color(0xFFEF7CBE),
                radius: 3.5,
              ),
            )
          ],
        )
      ],
    );
  }
}
