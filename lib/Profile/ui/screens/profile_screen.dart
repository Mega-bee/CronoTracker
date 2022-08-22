import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Favorite/ui/screen/favorite_screen.dart';
import '../../../Trending/ui/screens/trending_screen.dart';

class ProfileScreen extends StatelessWidget {
  TabBar get _tabBar=> TabBar(
    indicatorColor: Colors.appBarPurple,
    isScrollable: true,
    tabs:  [
      Tab(text: "Favorites"),
      Tab(text: "Want to buy"),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child:Scaffold(
          appBar:
                    AppBar(
                      backgroundColor: Colors.appBarPurple,
                      actions: [
                        IconButton(
                          onPressed: () {
                          },
                          icon: Icon(Icons.search),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.refresh),
                        ),

                      ],

                      leading: MenuWidget(),
                   bottom: PreferredSize(
                     preferredSize: _tabBar.preferredSize,
                     child:Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.appBarPurple
                      ),
                      child: _tabBar,
                    ),),
                  ),
          body:const TabBarView(
            children: [
              Favorites(),
              Icon(Icons.directions_car),
            ],
          ),
        ));
  }
}