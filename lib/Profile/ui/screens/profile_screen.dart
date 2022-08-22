import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Favorites/ui/Screen/FavoriteScreen.dart';
import '../../../utils/style/colors.dart';

class ProfileScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  TabBar get _tabBar=> TabBar(
    indicatorColor: PrimaryColor,
    isScrollable: true,
    tabs:  [
      Tab(text: "Favorites"),
      Tab(text: "Want to buy",)
    ],
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child:Scaffold(
          appBar: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child:Container(
                decoration: BoxDecoration(
                    color: PrimaryColor
                ),
                child: _tabBar,
              )),
          body: TabBarView(
            children: [
              Favorites(),
              Icon(Icons.directions_car),
            ],
          ),
        ));
  }
}
