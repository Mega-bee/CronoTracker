import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../models/discoverItem.dart';
import '../widgets/discover_item_card.dart';

class DiscoverScreen extends StatelessWidget {

  DiscoverItem? discoveritem;

  List<DiscoverItem> brands = [

    DiscoverItem(
        image: 'assets/ROLEX.png',
      label: 'Rolex'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Audemars Piguet'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Patek philipe'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Vacheron Costantin'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Richard Mille'
    ),

    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Girrard-Perregaux'
    ),


    DiscoverItem(
        image: 'assets/ROLEX.png',
        label: 'Other Brands'
    ),

  ];
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        elevation: 0,
        title: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: TextField(
              controller: _textEditingController,
              autofocus: false,
              onChanged: (searchText) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Theme.of(context).primaryColor)),
                filled: true,
                fillColor: Color(0xFFF4F4F4),
                hintText: 'Jump to...',
                // suffixIcon: const ImageIcon(
                //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
                //   color: Color.fromRGBO(18, 108, 242, 1),
                // ),
                hintStyle: const TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
            ),
          ),
        ),
        actions:<Widget>[
          Transform.scale(
              scale: 2.5,
              child:IconButton(
                onPressed: () {},
                icon: Image.asset(
                  ImageAsset.LOGO,
                  height: double.infinity,
                  width: double.infinity,
                ),
              )),
        ],
        leading: MenuWidget(),
      ),      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: PrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Discover',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  ),
                height: 40,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return DiscoverItemCard(brands[index]);
                },
                itemCount: brands.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
