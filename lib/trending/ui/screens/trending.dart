import 'package:flutter/material.dart';


class TrendingScreen extends StatelessWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.appBarPurple,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          SizedBox(width: 1),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.refresh)
          ),
        ],

        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.appBarPurple,
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_sharp),
            label: 'Trending',
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.handyman),
            label: 'Auctions',
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),


        ],

      ),




    );
  }
}
