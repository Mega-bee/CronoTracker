import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:flutter/material.dart';

import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../DiscoverInfo/UI/Screen/DiscoverInfoScreen.dart';
class SearchCard extends StatelessWidget {
  AuctionsModel auctionsModel;
  int index;
  SearchCard({Key? key,required this.auctionsModel,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DiscoverInfoScreen(
                  auctionsModel: auctionsModel,
                  index: index,
                )));
      },
      child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 0, right: 9, bottom: 5),
          child:
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              elevation: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                child: Center(
                  child: ListTile(
                    iconColor: Colors.white,
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                      child: Image.asset(auctionsModel.image.toString(),fit: BoxFit.cover,),
                    ),
                    title: Text(auctionsModel.text.toString(),style: TextStyle(fontSize: 14),),
                    // subtitle: Text(auctionsModel.model.toString(),style: TextStyle(fontSize: 12),),
                  ),
                ),
                ),
              )),
    );
  }
}
