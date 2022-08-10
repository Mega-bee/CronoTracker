import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../BottomNavigationBar/ui/screens/bottom_navigation_bar_screen.dart';
import '../widgets/drawer_menu_widget.dart';

class AssistantScreen extends StatelessWidget {
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
                    suffixIcon: Icon(Icons.mic),
                  ),
                ),
              ),

              Image(
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 500,
                image: AssetImage('lib/assets/images/watch3.jpg'),
              ),

            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBarScreen(),
      drawer: DrawerMenu(),

      );
  }
}
