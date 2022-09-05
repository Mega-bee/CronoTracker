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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: BlueColor,
        unselectedItemColor: Color(0xFF747474),
        unselectedIconTheme: IconThemeData(color:Color(0xFF747474) ),
        selectedIconTheme: IconThemeData(color: BlueColor),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFF9F9F9),
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
              Icons.gavel,),
            label: 'Auctions',

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notification',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.person,
          //   ),
          //   label: 'Profile',
          // ),
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
