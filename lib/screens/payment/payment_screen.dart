import 'package:flutter/material.dart';
import 'package:restaurant/utils/app_bar/custom_app_bar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar(
        context,
        title: 'Payment',
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_rounded, color: Colors.grey.shade400),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.green.shade100,
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: size.width,
                  color: Colors.red.shade100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  width: size.width - 80,
                                  height: 180,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade400,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(paymentCard['paymentType']),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(paymentCard['cardNumber']),
                                      Text(paymentCard['securityNum']),
                                      const SizedBox(height: 26),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(paymentCard['cardHolder']),
                                          Text(paymentCard['exDate']),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Container(),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: size.width,
                  color: Colors.yellow.shade100,
                  child: Text(""),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Map paymentCard = {
  'paymentType': 'VISA',
  'cardNumber': '1234   5678   9876   5432',
  'securityNum': '123',
  'cardHolder': 'James Born',
  'exDate': '03/17',
};
