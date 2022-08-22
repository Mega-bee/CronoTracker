import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../DrawerMenu/ui/Screen/drawer_menu.dart';
import '../../models/discoverItem.dart';
import '../widgets/discover_item_card.dart';

class DiscoverScreen extends StatelessWidget {

  DiscoverItem? discoveritem;

  List<DiscoverItem> brands = [

    DiscoverItem(
        image: 'assets/ROLEX.png',
      label: 'Rolex'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Audemars Piguet'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Patek philipe'
    ),

    DiscoverItem(
        image: 'assets/OLEX.png',
        label: 'Vacheron Costantin'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Richard Mille'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Girrard-Perregaux'
    ),


    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Other Brands'
    ),

  ];

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: (){
            _key.currentState!.openDrawer();
          }
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: PrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Discover',
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
                itemCount: brands.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
