import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Auctions/ui/Screen/auctions_screen.dart';
import '../../../Discover/ui/screens/discover_screen.dart';
import '../../../Notfications/ui/Screen/NotificationScreen.dart';
import '../../../Profile/ui/screens/profile_screen.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/style/colors.dart';
import '../Widgets/items.dart';

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
        backgroundColor: PrimaryColor,
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

class MysearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
  [
    IconButton(
    onPressed: (){
      if(query.isEmpty){
        close(context,null);
      }
      else {query="";}
      },
    icon: Icon(Icons.clear)),
  ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){close(context,null);},
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
