// ignore: todo
// TODO: call back for setState

// clean code book

import 'package:flutter/material.dart';

Container addToCartProductContainer(Size size) {
  return Container(
    width: size.width,
    margin: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
    ),
    child: Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 1, child: Container()),
                Image.asset(
                  'assets/images/Group 2137.png',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'water melon',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          '200ml, 1x ₹50.00',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(flex: 8, child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.clear,
                    color: Colors.red.shade600,
                    size: 30,
                  ),
                ),
                Expanded(flex: 1, child: Container()),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const Text('1'),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '₹100.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
