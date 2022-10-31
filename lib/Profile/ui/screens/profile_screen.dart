import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../My Collection/ui/Screen/FavoriteScreen.dart';
import '../../../utils/style/colors.dart';

class ProfileScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  TabBar get _tabBar=> TabBar(
    indicatorColor: PrimaryColor,
    isScrollable: true,
    tabs:  const [
      Tab(text: "Favorites"),
      Tab(text: "Want to buy",)
    ],
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child:Scaffold(
          appBar: AppBar(
                backgroundColor: PrimaryColor,
                actions: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.refresh),
                  ),
                ],
                leading: IconButton(
                  icon: Icon(Icons.sort),
                  onPressed: () {
                        ZoomDrawer.of(context)!.toggle();
                  },
                ),
          bottom:PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child:Container(
                decoration: BoxDecoration(
                    color: PrimaryColor
                ),
                child: _tabBar,
              ))),
          body: TabBarView(
            children: const [
              Favorites(),
              Icon(Icons.directions_car),
            ],
          ),
        ));
  }
}
