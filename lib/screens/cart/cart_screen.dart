import 'package:flutter/material.dart';
import 'package:restaurant/utils/app_bar/custom_app_bar.dart';
import 'package:restaurant/utils/buttons/custom_elevated_button.dart';

import '../payment/payment_screen.dart';
import 'widgets/cart_widget.dart';
import 'widgets/your_orders_details_widget.dart';

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
}
