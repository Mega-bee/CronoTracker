import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../DrawerMenu/ui/Screen/drawer_menu.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';

class AssistantScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
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
                image: AssetImage(ImageAsset.WATCH1),
              ),

            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBarScreen(),
    );
  }
}
