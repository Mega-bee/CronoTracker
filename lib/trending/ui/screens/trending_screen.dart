import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../BottomNavigationBar/bottom_navigation_bar.dart';
import '../../model_classes/watch_card.dart';
import '../widget/build_watch_card.dart';

class TrendingScreen extends StatelessWidget {

  int currentIndex = 0;

  watchCard? wc;

  List<watchCard> watches = [



  watchCard(
    img: 'lib/assets/images/watch.png'
  ),

    watchCard(
        img: 'lib/assets/images/watch2.jpg'
    ),

    watchCard(
        img: 'lib/assets/images/watch3.jpg'
    ),

    watchCard(
        img: 'lib/assets/images/watch4.png'
    ),


];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(right: 60, bottom: 10, top: 10),
                  child: Text(
                    'Trending Watches Below 10,000\$',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),

                Container(
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

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(right: 140, bottom: 10, top: 10),
                  child: Text(
                    'Most Trending Watches',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),

                Container(
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


                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(right: 60, bottom: 10, top: 10),
                  child: Text(
                    'Most Trending Rose Gold Watches',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),

                Container(
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



              ],

            ),
          ),
        ),

        bottomNavigationBar: BottomMenu(
          onClicked: (int value) {
          },

        ));

  }
}
