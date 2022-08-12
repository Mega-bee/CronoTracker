import 'package:flutter/material.dart';
import '../../models/auctions_model.dart';
import '../widget/auctions_card.dart';

class Auctions extends StatefulWidget {
  const Auctions({Key? key}) : super(key: key);

  @override
  State<Auctions> createState() => _AuctionsState();
}

class _AuctionsState extends State<Auctions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.82,
      child: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 15,right: 11,top: 20,bottom: 10),
                    child:Text("2 July 2022",style: TextStyle(fontSize: 25,color: Color(0xFF707070)),)),
                Container(
                  height: MediaQuery.of(context).size.height*0.8070,
                  child: ListView.builder(
                    shrinkWrap: false,
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    itemCount: AuctionsList.length,
                    itemBuilder: (context, index) {
                      return AuctionsCard( auctionsModel: AuctionsList[index],);
                    },
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          )),
    );
  }
}