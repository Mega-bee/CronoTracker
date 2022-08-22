import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  final AuctionsModel auctionsModel;
  const FavoriteCard({Key? key, required this.auctionsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: 200,
          child: Column(
            children: [
              Container(
                height: 100,
                child:
                Image.asset("${auctionsModel.image}",fit: BoxFit.contain),),
              Spacer(),
              Text("${auctionsModel.text}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}