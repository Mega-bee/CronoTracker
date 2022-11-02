import 'package:cronotracker/SplashScreen/ui/Screen/splash_screen.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: PrimaryColor,
      ),
      home: SplashScreenMain(),
    );
  }
}

