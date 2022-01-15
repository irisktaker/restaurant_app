import 'package:flutter/material.dart';

import '../home_screen.dart';

int selectedIndex = 0;
Widget selectedIndexScreen() {
  if (selectedIndex == 0) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: homeBarItems.smoothiesList.length,
      itemBuilder: (context, index) => buildProductsList(
        productName: homeBarItems.smoothiesList[index].productName,
        productPrice: homeBarItems.smoothiesList[index].productPrice,
        bgColors: homeBarItems.smoothiesList[index].bgColors,
        productImage: homeBarItems.smoothiesList[index].productImage,
      ),
    );
  } else if (selectedIndex == 1) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.yellow.shade200,
    );
  } else {
    return Container(
      color: Colors.green.shade200,
    );
  }
}

Widget buildProductsList({
  required String? productName,
  required String? productPrice,
  required List<Color> bgColors,
  required String? productImage,
}) {
  return InkWell(
    onTap: () => print('tapped'),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: bgColors,
                  ),
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
    ),
  );
}
