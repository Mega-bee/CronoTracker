import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Auctions/ui/Screen/auctions_screen.dart';
import '../../../Discover/ui/screens/discover_screen.dart';
import '../../../DrawerMenu/ui/Screen/drawer_menu.dart';
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
    ProfileScreen()
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
        backgroundColor: PrimaryColor,
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(5),
          //   child: Padding(
          //     padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          //     child: SearchWidget(
          //         text: query,
          //         onChanged: searchUsers,
          //         hintText: 'Search'),
          //   ),
          // ),
        actions: [
          IconButton(
            onPressed: (){
              showSearch(
                  context: context,
                  delegate: MysearchDelegate());},
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.refresh),
          ),

        ],

        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
      ),
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
