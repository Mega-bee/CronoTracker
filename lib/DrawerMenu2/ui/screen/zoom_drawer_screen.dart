import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../BottomNavigationBar/ui/screens/bottom_navigation_bar_screen.dart';
import '../../../DrawerMenu/ui/screens/about_screen.dart';
import '../../../DrawerMenu/ui/screens/assistant_screen.dart';
import '../model/menu_item_model.dart';
import 'menu_page_screen.dart';


class ZoomDrawerr extends StatefulWidget {
  const ZoomDrawerr({Key? key}) : super(key: key);

  @override
  _ZoomDrawerrState createState() => _ZoomDrawerrState();
}
class _ZoomDrawerrState extends State<ZoomDrawerr> {
  MenuItemm currentItem = MenuItems.mainScreen;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        borderRadius: 40,
        angle: -10,
        slideWidth: MediaQuery.of(context).size.width*0.7,
        showShadow: true,
        shadowLayer1Color: Colors.white,
        shadowLayer2Color: Colors.white54,
        menuBackgroundColor: Colors.appBarPurple,
        menuScreen:Builder(
          builder:(context) => MenuPage(
              currentItem : currentItem,
              onSelectedItem : (item){
                setState(() {
                  currentItem = item;
                });
                ZoomDrawer.of(context)!.close();
              }
          ),),
        mainScreen: getScreen()
    );

  }
  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.mainScreen:
        return BottomNavigationBarScreen();
      case MenuItems.about:
        return AboutScreen();
      case MenuItems.assistant:
        return AssistantScreen();
      case MenuItems.addShortcut:
        return BottomNavigationBarScreen();
      case MenuItems.appGallery:
        return BottomNavigationBarScreen();
      default :
        return BottomNavigationBarScreen();
    }
  }
}