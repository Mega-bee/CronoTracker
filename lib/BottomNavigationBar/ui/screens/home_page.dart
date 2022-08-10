import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Notfications/ui/Screen/NotificationScreen.dart';
import '../../../Trending/ui/screens/trending_screen.dart';
import '../../../trending/BottomNavigationBar/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int  currentIndex = 0;

  List<Widget> screens = [
    TrendingScreen(),
    NotificationScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomMenu(
        onClicked: (int value) {  },),

    );
  }
}
