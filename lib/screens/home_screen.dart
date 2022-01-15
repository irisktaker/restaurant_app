import 'package:flutter/material.dart';
import 'package:restaurant/screens/home_screen_data/home_screen_data.dart';

HomeBarItems homeBarItems = HomeBarItems();

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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

  Widget _selectedIndexScreen() {
    if (_selectedIndex == 0) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: homeBarItems.smoothiesList.length,
        itemBuilder: (context, index) => buildProductsList(
          productName: homeBarItems.smoothiesList[index].productName,
          productPrice: homeBarItems.smoothiesList[index].productPrice,
          bgColor: homeBarItems.smoothiesList[index].bgColor,
          productImage: homeBarItems.smoothiesList[index].productImage,
        ),
      );
    } else if (_selectedIndex == 1) {
      return Container(
        color: Colors.yellow.shade200,
      );
    } else {
      return Container(
        color: Colors.green.shade200,
      );
    }
  }

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
          style: TextStyle(color: Colors.grey),
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
        child: Column(
          children: [
            _selectedIndexScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) => setState(() => _selectedIndex = index),
        currentIndex: _selectedIndex,
        fixedColor: Colors.grey,
      ),
    );
  }

  Column buildProductsList({
    required String? productName,
    required String? productPrice,
    required Color? bgColor,
    required String? productImage,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(37.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productName!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        productPrice!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 75,
              height: 75,
              child: Image.asset(
                productImage!,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
