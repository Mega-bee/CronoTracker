import 'package:cronotracker/Assistant/ui/Screen/assistant_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/about_screen.dart';
import 'package:share_plus/share_plus.dart';

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
              Navigator.push(
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),

        ListTileTheme(
          selectedColor: Colors.white,
          child: ListTile(
            selectedTileColor: Colors.black12,
            selectedColor: Colors.white54,
            minLeadingWidth: 20,
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: () {
              void _onShare(BuildContext context) async {
                final box = context.findRenderObject() as RenderBox?;
                await Share.share(
                    "-",
                    sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size
                );
              }

              _onShare(context);
              print('shared !');
            },
          ),
        ),

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
