import 'package:cronotracker/Favorites/Model/FavoriteModel.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';


import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../Auctions/Model/auctions_model.dart';
class AuctionsInfo extends StatefulWidget {
  final AuctionsModel auctionsModel;
  int index;
  AuctionsInfo({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  State<AuctionsInfo> createState() => _AuctionsInfoState();
}

class _AuctionsInfoState extends State<AuctionsInfo> {
  Color fav = Colors.white;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert_rounded),
          ),


        ],
      ),
      body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    child: Image.asset(
                      "${widget.auctionsModel.image}",
                      fit: BoxFit.cover,
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding:EdgeInsets.only(left: 10),
                    child:Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Brand", style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Model",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Referance",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Year",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Size",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Dial Color",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Case Material",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Condition",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text(
                                  " Full Set(Box\nWarranty\ncard",
                                  style: TextStyle(fontSize: 15, color: Color(0xFF777777),),textAlign: TextAlign.start,),
                                Divider(color: Colors.transparent,),
                                Text("Status",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Last Bid",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Asking Price",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Last Bidder IG\nAccount"
                                    , style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,), Text(
                                    "Number of\nBidders"
                                    , style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("Date",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text(
                                    "IG Auction\nAccount"
                                    , style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                                Text("COUNTRY",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: Colors.transparent,),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${widget.auctionsModel.brand}", style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.model}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.referance}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text(widget.auctionsModel.year.toString(),
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.size}mm",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.dialColor}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.caseMaterial}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.condition}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.fullSet}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,height: 55),
                                Text("${widget.auctionsModel.status}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.price1}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.askingPrice}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                                Text("${widget.auctionsModel.lastBidder}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,height: 40,),
                                Text("${widget.auctionsModel.numberOfBidders}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,height: 30,),
                                Text("${widget.auctionsModel.date}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,height: 18,),
                                Text("${widget.auctionsModel.igAccount}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,height: 30,),
                                Text("${widget.auctionsModel.country}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: Colors.transparent,),
                              ],
                            ),
                          )]))])),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content: 'Would you like to be instantly notified when this watch is listed in the next live action ?',
                      yesBtn: (){
                        Navigator.pop(context);
                      },
                      noBtn: (){
                        Navigator.pop(context);
                      },
                    );
                  }
              );
            },
            child: Icon(Icons.credit_card),
            backgroundColor: PrimaryColor,
          ),

          SizedBox(height: 5),

          FloatingActionButton(
            onPressed: () {  showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDeleteDialog(
                    title: 'Confirm',
                    content: 'Would you like to add the watch to you favorites ?',
                    yesBtn: (){
                      setState(() {
                        favoriteList.add(AuctionsList[widget.index]);
                        Navigator.pop(context);
                        fav = Colors.red;
                      });
                    },
                    noBtn: (){
                      Navigator.pop(context);
                    },
                  );
                }
            );
            },
            child: Icon(Icons.favorite,color: fav,),
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );
  }
}