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
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 200,
            child: ListView(
              children: [
                SizedBox(
                  width: size.width * 0.73,
                  height: 170,
                  child: PageView.builder(
                    itemCount: 3,
                    controller:
                        PageController(viewportFraction: 0.77, initialPage: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF354025), Color(0xFF553002)],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: size.width * 0.10,
                  height: 5,
                  child: PageView.builder(
                    itemCount: 3,
                    controller:
                        PageController(viewportFraction: 0.10, initialPage: 3),
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: const LinearGradient(
                                colors: [Color(0xFF354025), Color(0xFF553002)],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
