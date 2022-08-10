import 'package:cronotracker/Auctions/Model/AuctionsModel.dart';
import 'package:flutter/material.dart';
class AuctionsCard extends StatelessWidget {
  final AuctionsModel auctionsModel;
  const AuctionsCard({Key? key, required this.auctionsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.2989,
      child: Padding(
        padding: const EdgeInsets.only(left: 11,right: 11,top: 13,bottom: 11),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0,top: 18,right: 23),
            child: Column(
              children: [
                Text("${auctionsModel.text}",style: TextStyle(fontSize:15 ,fontWeight: FontWeight.bold,color: Color(0xFF000000)),),
                Row(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text("${auctionsModel.status}",style: TextStyle(fontSize:15 ,fontWeight: FontWeight.bold,color: Color(0xFFD4181E))),
                          Text("Selling price",style: TextStyle(fontSize:15 ,color: Color(0xFF777777))),
                          Text("AED ${auctionsModel.price1} - ${auctionsModel.price2}",style: TextStyle(fontSize:15 ,color: Color(0xFF0A0652))),
                        ],
                      ),
                    ),
                    Image.asset("Assets/Images/Watch.png")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
