import 'package:flutter/material.dart';
import 'package:restaurant/custom_widgets/build_slider.dart';
import 'package:restaurant/custom_widgets/custom_text_button.dart';

import 'splash_screen.dart';
import 'splash_screen_3.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 9),
            Image.asset(
              'assets/images/Group 2180.png',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            const Spacer(flex: 2),
            const Text(
              'Juice is a beverage made from the'
              '\nextraction or pressing out of natural liquid'
              '\ncontained good quality fruits',
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
                  color: const Color(0xFFFFB13B),
                  navigate: const SplashScreen2(),
                ),
                const SizedBox(width: 16.5),
                buildSlider(
                  context,
                  color: const Color(0xFFEFEFEF),
                  navigate: const SplashScreen3(),
                ),
              ],
            ),
            const Spacer(flex: 2),
            buildTextButton(
              text: 'skip'.toUpperCase(),
              onPressed: () {},
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
