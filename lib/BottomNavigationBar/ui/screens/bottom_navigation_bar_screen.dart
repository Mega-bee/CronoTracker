import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Auctions/models/auctions_model.dart';
import '../../../Auctions/ui/screens/auctions_screen.dart';
import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../Discover/ui/screens/discover_screen.dart';
import '../../../DrawerMenu/ui/widgets/drawer_menu_widget.dart';
import '../../../Notfications/ui/Screen/NotificationScreen.dart';
import '../../../Profile/ui/screens/profile_screen.dart';
import '../../../Trending/ui/screens/trending_screen.dart';


class BottomNavigationBarScreen extends StatefulWidget {

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int  currentIndex = 0;

  List<Widget> screens = [
    TrendingScreen(),
    DiscoverScreen(),
    Auctions(),
    NotificationScreen(),
    ProfileScreen(),
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
        backgroundColor: Colors.appBarPurple,
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
