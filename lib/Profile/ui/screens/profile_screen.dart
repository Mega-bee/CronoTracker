import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../DrawerMenu/ui/Screen/drawer_menu.dart';
import '../../../utils/style/colors.dart';

class ProfileScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
      ),
      body: Center(
        child: Text(
          'Profile Screen'
        ),
      ),
      drawer: DrawerMenu(),
    );
  }
}
