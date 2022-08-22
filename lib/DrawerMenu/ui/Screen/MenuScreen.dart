import 'package:flutter/material.dart';
import '../../../utils/style/colors.dart';
import '../../Model/DrawerModel.dart';
class MenuItems{
  static const assistant =  MenuItemm(icon: Icons.mic,title: "Assistant");
  static const about =  MenuItemm(icon: Icons.info_outline,title: "About");
  static const share =  MenuItemm(icon: Icons.share,title: "Share");
  static const appGallery =  MenuItemm(icon: Icons.image,title: "App Gallery");
  static const addShortcut =  MenuItemm(icon: Icons.push_pin,title: "Add Shortcut");
  static const mainScreen =  MenuItemm(icon: Icons.home_filled,title: "Main Page");

  static const all = <MenuItemm>[
    mainScreen,
    assistant,
    about,
    share,
    appGallery,
    addShortcut
  ];}
class MenuPage extends StatefulWidget {
  final MenuItemm currentItem;
  final ValueChanged <MenuItemm> onSelectedItem;
  const MenuPage({Key? key, required this.currentItem, required this.onSelectedItem}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.dark(),
        child:Scaffold(
          backgroundColor: PrimaryColor,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Spacer(),
                ...MenuItems.all.map(buildMenuItem).toList(),
                const Spacer(flex: 2,)
              ],
            ),
          ),
        ));}

  Widget buildMenuItem(MenuItemm item) =>ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
          selectedTileColor: Colors.black12,
          selectedColor: Colors.white54,
          selected: widget.currentItem==item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title.toString()),
          onTap: () => widget.onSelectedItem(item)));
}