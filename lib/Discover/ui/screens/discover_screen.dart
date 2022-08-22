import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Auctions/ui/screens/auctions_screen.dart';
import '../../../DrawerMenu/ui/widgets/drawer_menu_widget.dart';
import '../../../Trending/ui/screens/trending_screen.dart';
import '../../models/discoverItem.dart';
import '../widgets/discover_item_card.dart';

class DiscoverScreen extends StatelessWidget {

  DiscoverItem? discoveritem;

  List<DiscoverItem> brands = [

    DiscoverItem(
        image: 'assets/rlx.png',
      label: 'Rolex'
    ),

    DiscoverItem(
        image: 'assets/rlx.png',
        label: 'Audemars Piguet'
    ),

    DiscoverItem(
        image: 'assets/rlx.png',
        label: 'Patek philipe'
    ),

    DiscoverItem(
        image: 'assets/rlx.png',
        label: 'Vacheron Costantin'
    ),

    DiscoverItem(
        image: 'assets/rlx.png',
        label: 'Richard Mille'
    ),

    DiscoverItem(
        image: 'assets/rlx.png',
        label: 'Girrard-Perregaux'
    ),


    DiscoverItem(
        image: 'assets/rlx.png',
        label: 'Other Brands'
    ),

  ];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
      backgroundColor: Colors.appBarPurple,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: (){
            showSearch(
                context: context,
                delegate: MysearchDelegate());
          },
          icon: Icon(Icons.search),
        ),

        IconButton(
          onPressed: (){},
          icon: Icon(Icons.refresh),
        ),

      ],

      leading: MenuWidget(),
    ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.appBarPurple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Discover',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        )
                    ),
                  ),
                  height: 40,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return DiscoverItemCard(brands[index]);
                  },
                  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  itemCount: brands.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: DrawerMenu(),
    );
  }
}

