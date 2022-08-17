import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../AboutUs/ui/Screen/about_us_screen.dart';
import '../../../Assistant/ui/Screen/assistant_screen.dart';
import '../Widgets/share_widget.dart';

class DrawerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Center(
                child: Text(
                  'Meta Auction Platinium',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
              ),
            ),
          ),

          Divider(),

          ListTile(
            leading: Icon(
              Icons.mic,
              size: 30,
            ),
            title: Text('Assistant'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AssistantScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              size: 30,
            ),
            title: Text('About'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),

          ShareWidget(),

          Divider(),

          ListTile(
            leading: Icon(
              Icons.image,
              size: 30,
            ),
            title: Text('App Gallery'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(
              Icons.push_pin,
              size: 30,
            ),
            title: Text('Add shortcut'),
            onTap: () {},
          ),

        ],
      ),
    );
  }
}
