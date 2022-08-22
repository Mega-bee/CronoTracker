import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Trending/ui/screens/trending_screen.dart';
import '../widgets/drawer_menu_widget.dart';

class AssistantScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: MenuWidget(),
        backgroundColor: Colors.appBarPurple,
        actions: [

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.refresh),
          ),
        ],

      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'What are you looking for ?',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),

              Image(
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 500,
                image: AssetImage('assets/watch2.jpg'),
              ),

            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBarScreen(),

      );
  }
}
