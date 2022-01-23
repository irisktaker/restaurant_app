import 'package:flutter/material.dart';
import 'package:restaurant/utils/app_bar/custom_app_bar.dart';
import 'package:restaurant/utils/buttons/custom_elevated_button.dart';

import '../payment/payment_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: appBar(
        context,
        title: 'My Cart',
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_outlined),
          color: Colors.grey.shade400,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: addToCartProductContainer(size),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: addToCartProductContainer(size),
          ),
          const SizedBox(height: 16),
          Container(
            width: size.width,
            height: size.height * 0.40,
            padding:
                const EdgeInsets.only(top: 24, right: 20, left: 20, bottom: 10),
            color: Colors.grey.shade50,
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Orders',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 16),
                    yourOrdersDetails(text: 'Bill Total', price: '₹150.00'),
                    const Divider(height: 2),
                    yourOrdersDetails(text: 'Discount', price: '0.00'),
                    const Divider(height: 2),
                    yourOrdersDetails(
                      text: 'Grand Total',
                      price: '₹150.00',
                      fontWeight: FontWeight.w900,
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.center,
                      child: buildElevatedButton(
                        width: 250,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => const PaymentScreen(),
                              transitionsBuilder: (c, anim, a2, child) =>
                                  FadeTransition(opacity: anim, child: child),
                              transitionDuration:
                                  const Duration(milliseconds: 500),
                            ),
                          );
                        },
                        btnText: 'Proceed to pay',
                        colors: [
                          const Color(0xFFF46186),
                          const Color(0xFFEE87D7),
                        ],
                        radius: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget yourOrdersDetails({
    required String text,
    required String price,
    FontWeight? fontWeight,
  }) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: fontWeight,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }

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
}
