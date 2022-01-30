// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant/screens/home/data/home_screen_data.dart';
import 'package:restaurant/screens/payment/payment_screen.dart';
import 'package:restaurant/utils/buttons/custom_elevated_button.dart';

import '../cart_bloc.dart';
import 'your_orders_details_widget.dart';

class YourOrderBox extends StatefulWidget {
  List<ProductModel> products;

  YourOrderBox({Key? key, required this.products}) : super(key: key);

  @override
  _YourOrderBoxState createState() => _YourOrderBoxState();
}

class _YourOrderBoxState extends State<YourOrderBox> {
  final CartScreenBloc _bloc = CartScreenBloc();
  double discount = 1.10;

  @override
  void initState() {
    super.initState();
    _bloc.mainProductList = widget.products;
    _bloc.filterList(widget.products);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double billTotalPrice() {
      setState(() {});
      return _bloc.billTotal();
    }

    return Container(
      width: size.width,
      height: size.height * 0.40,
      padding: const EdgeInsets.only(top: 24, right: 20, left: 20, bottom: 10),
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
            yourOrdersDetails(
              text: 'Bill Total',
              price: billTotalPrice().toStringAsFixed(2),
            ),
            const Divider(height: 2),
            yourOrdersDetails(
              text: 'Discount',
              price: (billTotalPrice() <= 250
                      ? discount = 1.10
                      : (billTotalPrice() <= 500 || billTotalPrice() < 750)
                          ? discount = 1.15
                          : discount = 1.25)
                  .toStringAsFixed(2),
            ),
            const Divider(height: 2),
            yourOrdersDetails(
              text: 'Grand Total',
              price: (billTotalPrice() / discount).toStringAsFixed(2),
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
}
