import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../DrawerMenu/ui/widgets/drawer_menu_widget.dart';
import '../../model_classes/watch_card.dart';
import '../widget/build_watch_card.dart';

class TrendingScreen extends StatelessWidget {

  int currentIndex = 0;

  watchCard? wc;

  List<watchCard> watches = [



  watchCard(
    img: 'assets/images/watch5.jpg'
  ),

    watchCard(
        img: 'assets/images/watch2.jpg'
    ),

    watchCard(
        img: 'assets/images/watch.png'
    ),

    watchCard(
        img: 'assets/images/watch.png'
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
              onPressed: (){},
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
      body: Padding(
          padding: const EdgeInsets.all(8.0),
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
