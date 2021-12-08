import 'package:flutter/material.dart';
import 'package:save/screens/splash_screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
