import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../WatchDetails/ui/screens/watch_details_screen.dart';

class DiscoverFilterWidget3 extends StatelessWidget {
  final AuctionsModel auctionsModel;
  int index;
  DiscoverFilterWidget3({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 6, 10, 0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AuctionsInfo(auctionsModel: auctionsModel, index: index,)));
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        SizedBox(
                          height: 70,
                          child: Image.asset("${auctionsModel.image}",
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      "${auctionsModel.brand}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600,
                          fontSize: 14
                      ),
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
                  // Icon(Icons.favorite,color: PrimaryColor,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
