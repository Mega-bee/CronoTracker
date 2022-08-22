import 'package:flutter/material.dart';

import '../../../BottomNavigationBar/ui/widget/share_widget.dart';
import '../model/menu_item_model.dart';


class MenuItems {
  static const assistant = MenuItemm(icon: Icons.mic, title: "Assistant");
  static const about = MenuItemm(icon: Icons.info_outline, title: "About");
  static const appGallery = MenuItemm(icon: Icons.image, title: "App Gallery");
  static const addShortcut =
  MenuItemm(icon: Icons.push_pin, title: "Add Shortcut");
  static const mainScreen =
  MenuItemm(icon: Icons.home_filled, title: "Main Page");

  static const all = <MenuItemm>[
    mainScreen,
    assistant,
    about,
    appGallery,
    addShortcut
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
          backgroundColor: Colors.appBarPurple,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Spacer(),
                ...MenuItems.all.map(buildMenuItem).toList(),
                ShareWidget(),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
        ));
  }

  Widget buildMenuItem(MenuItemm item) => ListTileTheme(
      selectedColor: Colors.white54,
      child: ListTile(
          selectedTileColor: Colors.black12,
          selectedColor: Colors.white,
          selected: widget.currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title.toString()),


          onTap: () => widget.onSelectedItem(item)));
}