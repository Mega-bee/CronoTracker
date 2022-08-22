import 'dart:async';
import 'package:cronotracker/BottomNavigationBar/ui/screens/bottom_navigation_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'DrawerMenu2/ui/screen/zoom_drawer_screen.dart';

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
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                ZoomDrawerr(),
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Lottie.network('https://assets6.lottiefiles.com/private_files/lf30_zegucavd.json'),
        ),
      ),

    );
  }
}
