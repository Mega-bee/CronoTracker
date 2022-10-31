import 'package:flutter/material.dart';

import '../../../Auctions/Model/auctions_model.dart';
import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../My Collection/Model/FavoriteModel.dart';
import '../../../utils/style/colors.dart';
class WantToBuyCard extends StatelessWidget {
  final AuctionsModel auctionsModel;
  int index;
  WantToBuyCard({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AuctionsInfo0(
                  auctionsModel: auctionsModel,
                  index: index,
                )));
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 300,
            width: 200,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Image.asset("${auctionsModel.image}",
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
                              favoriteList.remove(favoriteList[index]);
                            }))
                  ],
                ),
                Spacer(),
                Text(
                  "${auctionsModel.text}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                ),
                Text(
                  "${auctionsModel.date}",
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

