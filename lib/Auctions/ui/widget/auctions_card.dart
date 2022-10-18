import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';

class AuctionsCard extends StatelessWidget {
  final AuctionsModel auctionsModel;
  final int index;

  const AuctionsCard({Key? key, required this.auctionsModel, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AuctionsInfo(auctionsModel: auctionsModel, index: 1,)));
      },
      child: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.35,
        child: Padding(
          padding: const EdgeInsets.only(
              left: 11, right: 11, top: 13, bottom: 11),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 9, right: 23),
              child: Column(
                children: [
                  Text("${auctionsModel.text}", style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000)),),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.16,
                          width: double.infinity,
                          child: Image.asset("${auctionsModel.image}",
                            fit: BoxFit.contain,),
                        ),
                        Text("${auctionsModel.status}", style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4181E))),
                        Text("Last Bid AED${auctionsModel
                            .price}",
                            style: TextStyle(fontSize: 15,
                                color: Color(0xFF777777))),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
