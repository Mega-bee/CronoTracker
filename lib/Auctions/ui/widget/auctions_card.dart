import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../utils/Images/Images.dart';

class AuctionsCard extends StatelessWidget {
  final AuctionsModel auctionsModel;
  int index;
  AuctionsCard({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AuctionsInfo(
                    auctionsModel: auctionsModel,
                    index: index,
                  )));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
              children:[Padding(
                padding:
                const EdgeInsets.only(left: 11, right: 11, top: 13, bottom: 11),
                child:
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 9, right: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.16,
                                  width: double.infinity,
                                  child: Image.asset(
                                    "${auctionsModel.image}",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "${auctionsModel.text}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000)),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                        "Last Bid AED${auctionsModel.price1} = ${auctionsModel.price2}",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF777777))),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text("${auctionsModel.date}",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFF777777))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),),
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height*0.1,
                              width: MediaQuery.of(context).size.width*0.1,
                              child: Image.asset(ImageAsset.SOLDOUT)),
                        )
                      // Text("${auctionsModel.status}",
                      //     style: TextStyle(
                      //         fontSize: 15,
                      //         fontWeight: FontWeight.bold,
                      //         color: Color(0xFFD4181E))),
                    )),
              ]),
        ),
      ),
    );
  }
}
