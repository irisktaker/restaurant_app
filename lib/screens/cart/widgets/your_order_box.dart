  import 'package:flutter/material.dart';
import 'package:restaurant/screens/payment/payment_screen.dart';
import 'package:restaurant/utils/buttons/custom_elevated_button.dart';

import 'your_orders_details_widget.dart';

Widget yourOrderBox(Size size, BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.40,
      padding:
          const EdgeInsets.only(top: 24, right: 20, left: 20, bottom: 10),
      color: Colors.grey.shade50,
      child: SingleChildScrollView(
        child: Column(
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
                      transitionDuration: const Duration(milliseconds: 500),
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
      ),
    );
  }
