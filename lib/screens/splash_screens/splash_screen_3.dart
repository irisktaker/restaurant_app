import 'package:flutter/material.dart';
import 'package:restaurant/custom_widgets/build_slider.dart';
import 'package:restaurant/custom_widgets/custom_text_button.dart';
import 'package:restaurant/screens/login_screen.dart';

import 'splash_screen.dart';
import 'splash_screen_2.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 9),
            Image.asset(
              'assets/images/Group 2183.png',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            const Spacer(flex: 2),
            const Text(
              'User can look for their favorite juices'
              '\nand buy it through the online gateway'
              '\nprocess or through cash on delivery',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFA5A5A5),
                fontFamily: 'Roboto',
              ),
            ),
            const Spacer(flex: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSlider(
                  context,
                  color: const Color(0xFFEFEFEF),
                  navigate: const SplashScreen(),
                ),
                const SizedBox(width: 16.5),
                buildSlider(
                  context,
                  color: const Color(0xFFEFEFEF),
                  navigate: const SplashScreen2(),
                ),
                const SizedBox(width: 16.5),
                buildSlider(
                  context,
                  color: const Color(0xFF99B0FB),
                  navigate: const SplashScreen3(),
                ),
              ],
            ),
            const Spacer(flex: 2),
            buildTextButton(
              text: 'skip'.toUpperCase(),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              color: const Color(0xFF939393),
              fontSize: 18,
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
