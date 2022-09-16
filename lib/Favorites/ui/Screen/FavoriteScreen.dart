import 'package:flutter/material.dart';

import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';
import '../../Model/FavoriteModel.dart';
import '../Widget/FavoriteCard.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: PrimaryColor,
            titleSpacing: 0,
            toolbarHeight: 70,            centerTitle: true,
            elevation: 0,
            title: TextField(
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
                actions:[
              Center(
                child: SizedBox(
                  width: 35,
                    height: 40,
                    child: InkWell(
                      onTap: () {},
                      child: Transform.scale(
                          scale: 2.5,
                          child:
                            Image.asset(
                              ImageAsset.LOGO,
                              alignment: Alignment(0.0,0.0),
                            ),
                          ),
                    ),
                ),
              ),
            ],
            leading: MenuWidget()),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Favorites",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize:24 ),)),
            ),
            Padding(
            padding: EdgeInsets.all(8),
            child: favoriteList.isEmpty
                ? const Center(
                    child: Text(
                      'There are no favorites yet!',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemCount: favoriteList.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return FavoriteCard(auctionsModel: favoriteList[index], index: index,);
                    })),
          ],
        ));
  }
}
