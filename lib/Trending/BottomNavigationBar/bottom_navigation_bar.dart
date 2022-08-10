import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}