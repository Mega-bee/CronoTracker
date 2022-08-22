import 'package:flutter/material.dart';

import '../../../Auctions/Model/auctions_model.dart';
import '../../Model/FavoriteModel.dart';
import '../Widget/FavoriteCard.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                itemBuilder: (BuildContext context, int index) {
                  return FavoriteCard(auctionsModel: favoriteList[index], index: index,);
                }));
  }
}
