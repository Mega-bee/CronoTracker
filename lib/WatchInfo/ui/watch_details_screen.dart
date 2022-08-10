import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../BottomNavigationBar/ui/screens/bottom_navigation_bar_screen.dart';
import '../Model/watch_details_model.dart';

class WatchDetailsScreen extends StatelessWidget {

  WatchDetails? watchDetails;
  WatchDetailsScreen(this.watchDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.appBarPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/watch2.jpg'),
              fit: BoxFit.cover,
              width: double.infinity,
            ),

            SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Brand',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Omega'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Model Name',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Speedmaster MoonSwatch'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Reference',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('SO33M100'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Nickname',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Moon'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Dial Color',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Black Dial'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Case Material',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Bioceramic'),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: () {  },
            child: Icon(Icons.credit_card),
            backgroundColor: Colors.appBarPurple,
          ),

          SizedBox(height: 5),

          FloatingActionButton(
            onPressed: () {  },
            child: Icon(Icons.favorite),
            backgroundColor: Colors.appBarPurple,
          ),
        ],
      ),
    );
  }
}
