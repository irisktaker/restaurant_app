import 'package:flutter/material.dart';
import 'package:restaurant/screens/login_screen.dart';
import 'package:restaurant/shared/build_slider.dart';
import 'package:restaurant/shared/custom_text_button.dart';

import 'splash_screen_2.dart';
import 'splash_screen_3.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (c, a1, a2) => const SplashScreen2(),
          transitionsBuilder: (c, anim, a2, child) =>
              FadeTransition(opacity: anim, child: child),
          transitionDuration: const Duration(milliseconds: 500),
        ),
      ),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 9),
              Image.asset(
                'assets/images/Group 2179.png',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              const Spacer(flex: 2),
              const Text(
                'It’s available in your favorite cities now'
                '\nand thy wait! go and order'
                '\nfour favorite juices',
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
                    color: const Color(0xFFF4AAD0),
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
                    color: const Color(0xFFEFEFEF),
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
      ),
    );
  }
}
