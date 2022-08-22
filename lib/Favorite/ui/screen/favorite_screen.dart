import 'package:flutter/material.dart';
import '../../../Auctions/models/auctions_model.dart';
import '../widget/favorite_card.dart';

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
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing:5,
              mainAxisSpacing: 5
          ),
          itemCount: AuctionsList.length,
          itemBuilder: (BuildContext context, int index){
            return FavoriteCard(auctionsModel: AuctionsList[index]);
          }),
    );
  }
}