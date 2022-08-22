import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../DrawerMenu/ui/Screen/drawer_menu.dart';
import '../../../utils/Images/Images.dart';
import '../../Model/trending_model.dart';
import '../Widget/trending_watch_card.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Auctions/ui/screens/auctions_screen.dart';
import '../../model_classes/watch_card.dart';

class TrendingScreen extends StatelessWidget {

  int currentIndex = 0;

  watchCard? wc;

  List<watchCard> watches = [

    watchCard(
        img: 'assets/watch.jpg',
        brand: 'Omega',
        modelName: 'SpeedMaster SunSwatch',
        reference: 'SO7KG33H',
        nickname: 'Sun',
        dialColor: 'Brown',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '6',
        priceTracking: '40'
    ),

    watchCard(
        img: 'assets/watch2.jpg',
        brand: 'Rolex',
        modelName: 'Rolex-2421',
        reference: 'SO7KG33H',
        nickname: 'king',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '32'
    ),

    watchCard(
        img: 'assets/watch4 (1).jpg',
        brand: 'Quartz',
        modelName: 'fancy watch',
        reference: 'quartz-3421fds',
        nickname: 'cool watch',
        dialColor: 'blue',
        caseMaterial: 'silver',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '30'
    ),

    watchCard(
        img: 'assets/watch4 (2).jpg',
        brand: 'Fossil',
        modelName: 'fossilWatchCool',
        reference: 'fossil-6423',
        nickname: 'hello world',
        dialColor: 'Brown',
        caseMaterial: 'gold',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '10'
    ),

    watchCard(
        img: 'assets/watch5.jpg',
        brand: 'Casio',
        modelName: 'nice watch',
        reference: 'casio-3453',
        nickname: 'sweet',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '8'
    ),


  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.appBarPurple,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                  context: context,
                  delegate: MysearchDelegate());
            },
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          ),

        ],

        leading: MenuWidget(),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Stack(
                children: [

                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trending Watches below 10,000\$',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return BuildWatchCard(watches[index]);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: watches.length,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Stack(
                children: [

                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trending Watches Watches',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return BuildWatchCard(watches[index]);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: watches.length,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Stack(
                children: [

                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Most Trending Rose Gold Watches',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return BuildWatchCard(watches[index]);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: watches.length,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],

          ),
        ),
      ),
      drawer: DrawerMenu(),



    );


  }
}
  class  MenuWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context) => IconButton(
  icon: Icon(Icons.sort),
  onPressed: ()=>ZoomDrawer.of(context)!.toggle(),
  );
  }






