import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/screens/splash_screens/splash_screen.dart';

import 'screens/home_screen.dart';
import 'screens/item_card.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashScreen(),
      // home: ItemCard(),
      home: HomeScreen(),
    );
  }
}
