import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/screens/splash_screens/splash_screen.dart';

import 'screens/main_screen.dart';
import 'screens/products_details_screen.dart';

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
      home: const SplashScreen(),
      // home: ItemCard(),
      // home: HomeScreen(),
    );
  }
}
