import 'package:flutter/material.dart';
import 'package:restaurant/shared/custom_app_bar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,
          title: 'Payment',
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_rounded, color: Colors.grey.shade400),
          )),
    );
  }
}
