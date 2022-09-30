import 'package:cronotracker/Favorites/ui/Screen/FavoriteScreen.dart';
import 'package:cronotracker/NavigationBar/ui/Screen/navbar.dart';
import 'package:cronotracker/SignIn/ui/signin_screen.dart';
import 'package:cronotracker/Want%20To%20Buy/ui/Screen/want_to_buy.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Plans/ui/screen/Plans.dart';
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
        mainScreenTapClose: true,
        // shadowLayer1Color: Colors.,
        shadowLayer2Color: BlueColor,
        menuBackgroundColor:PrimaryColor,
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
      case MenuItems.MyCollection:
        return Favorites();
      case MenuItems.wantToBuy:
        return WantToBuy();
      case MenuItems.signIn:
        return SignInScreen();
      case MenuItems.plans:
        return Plans();
      default :
        return BottomNavigationBarScreen();
    }
  }
}