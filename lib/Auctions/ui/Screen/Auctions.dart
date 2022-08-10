import 'package:cronotracker/Auctions/Model/AuctionsModel.dart';
import 'package:cronotracker/Auctions/ui/Widgets/AuctionsCard.dart';
import 'package:flutter/material.dart';

class Auctions extends StatefulWidget {
  const Auctions({Key? key}) : super(key: key);

  @override
  State<Auctions> createState() => _AuctionsState();
}

class _AuctionsState extends State<Auctions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child:Padding(
      padding: EdgeInsets.only(top: 33),
      child: Column(
        children: [
          Text("",style: TextStyle(fontSize: 25,color: Color(0xFF707070)),),
          Container(
            child: ListView.builder(
              itemCount: AuctionsList.length,
              itemBuilder: (context, index) {
                return AuctionsCard( auctionsModel: AuctionsList[index],);
              },
            ),
          ),
        ],
      ),
    )));
  }
}
