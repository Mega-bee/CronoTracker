import 'dart:async';
import 'package:cronotracker/utils/Images/Images.dart';
import 'package:flutter/material.dart';
import '../../../DrawerMenu/ui/screen/zoom_drawer_screen.dart';

class SplashScreenMain extends StatefulWidget {
  @override
  State<SplashScreenMain> createState() => _SplashScreenMainState();
}

class _SplashScreenMainState extends State<SplashScreenMain> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ZoomDrawerr(),
            )));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.3,
          child: Image.asset(ImageAsset.LOGO,fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
