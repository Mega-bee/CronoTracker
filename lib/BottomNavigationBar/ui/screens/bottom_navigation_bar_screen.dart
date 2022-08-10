import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Notfications/ui/Screen/NotificationScreen.dart';
import '../../../Trending/ui/screens/trending_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int  currentIndex = 0;

  List<Widget> screens = [
    TrendingScreen(),
    NotificationScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        unselectedIconTheme: IconThemeData(color:Colors.white38 ),
        selectedIconTheme: IconThemeData(color: Colors.white),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.bottomNavPurple,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_up_sharp,
            ),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.gavel,
            ),
            label: 'Auctions',

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),


    );
  }
}
