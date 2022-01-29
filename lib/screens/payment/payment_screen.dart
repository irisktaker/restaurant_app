import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/utils/app_bar/custom_app_bar.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<Map> paymentCard = [
    {
      'paymentType': 'https://www.freepnglogos.com/uploads/visa-inc-png-18.png',
      'cardNumber': '1234   5678   9876   5432',
      'securityNum': '1234',
      'cardHolder': 'James Born',
      'exDate': '04/23',
    },
    {
      'paymentType':
          'https://www.pngplay.com/wp-content/uploads/13/Master-Card-Logo-PNG-Images-HD.png',
      'cardNumber': '9876   5432   1234   5678',
      'securityNum': '2564',
      'cardHolder': 'Michael William',
      'exDate': '07/22',
    },
    {
      'paymentType': 'https://www.freepnglogos.com/uploads/visa-inc-png-18.png',
      'cardNumber': '5432   5678   1234   9876',
      'securityNum': '7745',
      'cardHolder': 'Robert John',
      'exDate': '03/22',
    },
  ];

  int _currentIndex = 0;
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
        color: Colors.grey.shade200,
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: size.width,
                  // color: Colors.red.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider(
                        items: [
                          paymentCardContainer(
                            size,
                            color: Colors.black,
                            payType: paymentCard[1]["paymentType"],
                            cardNum: paymentCard[1]["cardNumber"],
                            securityNum: paymentCard[1]["securityNum"],
                            cardHolder: paymentCard[1]["cardHolder"],
                            exDate: paymentCard[1]["exDate"],
                          ),
                          paymentCardContainer(
                            size,
                            color: Colors.blueAccent,
                            payType: paymentCard[0]["paymentType"],
                            cardNum: paymentCard[0]["cardNumber"],
                            securityNum: paymentCard[0]["securityNum"],
                            cardHolder: paymentCard[0]["cardHolder"],
                            exDate: paymentCard[0]["exDate"],
                          ),
                          paymentCardContainer(
                            size,
                            color: Colors.orangeAccent,
                            payType: paymentCard[2]["paymentType"],
                            cardNum: paymentCard[2]["cardNumber"],
                            securityNum: paymentCard[2]["securityNum"],
                            cardHolder: paymentCard[2]["cardHolder"],
                            exDate: paymentCard[2]["exDate"],
                          ),
                        ],
                        options: CarouselOptions(
                          height: 180,
                          enlargeCenterPage: true,
                          pageSnapping: true,
                          enableInfiniteScroll: false,
                          initialPage: 1,
                          onPageChanged: (index, _) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          indexLine(0),
                          indexLine(1),
                          indexLine(2),
                        ],
                      ),
                    ],
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

  Container indexLine(int index) {
    return Container(
      width: 30,
      height: _currentIndex == index ? 5 : 3,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade800,
      ),
    );
  }

  Container paymentCardContainer(
    Size size, {
    required String payType,
    required String cardNum,
    required String securityNum,
    required String cardHolder,
    required String exDate,
    required Color color,
  }) {
    return Container(
      width: size.width * 0.85,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.network(
              payType,
              width: 60,
              height: 35,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardNum,
                style: const TextStyle(fontSize: 16, wordSpacing: 2.3),
              ),
              Text(
                securityNum,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardHolder,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                exDate,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
