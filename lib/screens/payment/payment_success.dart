import 'package:flutter/material.dart';
import 'package:restaurant/screens/home/home_screen.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            CircleAvatar(
              maxRadius: 70,
              backgroundColor: Colors.greenAccent.shade200,
              child: const Icon(
                Icons.check,
                size: 85,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Payment Success!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              "Thank You..",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Expanded(child: Container()),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.grey.shade700,
                )),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
