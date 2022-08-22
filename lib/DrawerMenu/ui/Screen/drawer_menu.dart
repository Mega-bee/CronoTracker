//import 'package:cronotracker/Assistant/ui/Screen/assistant_screen.dart';
//import 'package:flutter/material.dart';
//import '../../../AboutUs/ui/Screen/about_us_screen.dart';
//import '../../../DrawerMenu/ui/Widgets/share_widget.dart';
//import '../../../NavigationBar/ui/Screen/navbar.dart';
//import '../../../utils/style/colors.dart';
//import '../../Model/DrawerModel.dart';
//import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
//
//import 'MenuScreen.dart';
//class ZoomDrawerr extends StatefulWidget {
//  const ZoomDrawerr({Key? key}) : super(key: key);
//
//  @override
//  State<ZoomDrawerr> createState() => _ZoomDrawerrState();
//}
//class _ZoomDrawerrState extends State<ZoomDrawerr> {
//  MenuItemm currentItem = MenuItems.mainScreen;
//  @override
//  Widget build(BuildContext context) {
//    return ZoomDrawer(
//        borderRadius: 40,
//        angle: -10,
//        slideWidth: MediaQuery.of(context).size.width*0.7,
//        showShadow: true,
//        shadowLayer1Color: Colors.white,
//        shadowLayer2Color: Colors.white54,
//        menuBackgroundColor: PrimaryColor,
//        menuScreen: MenuPage(
//            currentItem : currentItem,
//            onSelectedItem : (item){
//              if (!mounted) return;
//              setState(() =>
//              currentItem = item);
//              // ZoomDrawer.of(context)!.close();
//            }
//        ),
//        mainScreen:
//        getScreen()
//    );
//
//  }
//  Widget getScreen() {
//    switch (currentItem) {
//      case MenuItems.mainScreen:
//        return BottomNavigationBarScreen();
//      case MenuItems.about:
//        return AboutScreen();
//      case MenuItems.assistant:
//        return AssistantScreen();
//      case MenuItems.share:
//        return ShareWidget();
//      case MenuItems.addShortcut:
//        return BottomNavigationBarScreen();
//      case MenuItems.appGallery:
//        return BottomNavigationBarScreen();
//      default :
//        return BottomNavigationBarScreen();
//    }
//  }
//}
