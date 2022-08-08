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
            color: Colors.white,
          ),
          label: 'Trending',
          backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.search,
            color: Colors.white,
          ),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.gavel,
            color: Colors.white,
          ),
          label: 'Auctions',
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.notifications,
            color: Colors.white,),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,
            color: Colors.white,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}