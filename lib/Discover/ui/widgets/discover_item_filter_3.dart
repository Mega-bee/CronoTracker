import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:flutter/material.dart';

import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../WatchDetails/ui/screens/watch_details_screen.dart';

class DiscoverFilterWidget3 extends StatelessWidget {
  final AuctionsModel auctionsModel;
  int index;
  DiscoverFilterWidget3({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Black Dial",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuctionsInfo(auctionsModel: auctionsModel, index: index,)));
            },
            child: Card(

              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${auctionsModel.brand}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600,
                        fontSize: 14
                      ),
                    ),
                    Text(
                      "${auctionsModel.caseMaterial}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          color: Colors.black54, fontSize: 12),
                    ),
                    SizedBox(height: 50,),
                    Center(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(
                            height: 100,
                            child: Image.asset("${auctionsModel.image}",
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                    // Icon(Icons.favorite,color: PrimaryColor,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
