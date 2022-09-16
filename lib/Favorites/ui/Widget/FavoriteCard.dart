import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../Auctions/Model/auctions_model.dart';
import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../Model/FavoriteModel.dart';

class FavoriteCard extends StatefulWidget {
  final AuctionsModel auctionsModel;
  int index;

  FavoriteCard({Key? key, required this.auctionsModel, required this.index})
      : super(key: key);

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AuctionsInfo(
                auctionsModel: widget.auctionsModel,
                index: widget.index,
              )));
    },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset("${widget.auctionsModel.image}",
                          fit: BoxFit.cover),
                    ),
                    Positioned(
                        top: 0.0,
                        right: 0.0,
                        child: IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: PrimaryColor,
                            ),
                            onPressed: () {
                              favoriteList.remove(favoriteList[widget.index]);
                            }))
                  ],
                ),
                Spacer(),
                Text(
                  "${widget.auctionsModel.text}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                ),
                // Icon(Icons.favorite,color: PrimaryColor,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
