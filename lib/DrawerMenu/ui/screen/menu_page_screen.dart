import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../BottomNavigationBar/ui/widget/share_widget.dart';
import '../model/menu_item_model.dart';


class MenuItems {
  static const mainScreen = MenuItemm(icon: Icons.home_filled, title: "Main Page");
  static const favorites = MenuItemm(icon: Icons.star_border_outlined, title: "Favorites");
  static const wantToBuy = MenuItemm(icon: Icons.shopping_bag_outlined, title: "Want To Buy");

  static const all = <MenuItemm>[
    mainScreen,
    favorites,
    wantToBuy
  ];
}

class MenuPage extends StatefulWidget {
  final MenuItemm currentItem;
  final ValueChanged<MenuItemm> onSelectedItem;

  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          backgroundColor: PrimaryColor,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Spacer(),
                ...MenuItems.all.map(buildMenuItem).toList(),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
        ));
  }

  Widget buildMenuItem(MenuItemm item) => ListTileTheme(
      selectedColor: Colors.black,
      child: ListTile(
          selectedTileColor: Colors.black12,
          selectedColor: Colors.black,
          selected: widget.currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon,color: Color(0xFF555555),),
          title: Text(item.title.toString(),style: TextStyle(
              color: Color(0xFF555555),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Rubik'),),


          onTap: () => widget.onSelectedItem(item)));
}