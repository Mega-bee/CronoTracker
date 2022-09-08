import 'package:cronotracker/Favorites/Model/FavoriteModel.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';


import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../Auctions/Model/auctions_model.dart';
import '../../../utils/Images/Images.dart';
class AuctionsInfo extends StatefulWidget {
  final AuctionsModel auctionsModel;
  int index;
  AuctionsInfo({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  State<AuctionsInfo> createState() => _AuctionsInfoState();
}

class _AuctionsInfoState extends State<AuctionsInfo> {
  Color fav = BlueColor;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        actions: [
          Transform.scale(
              scale: 2.5,
              child:IconButton(
                onPressed: () {},
                icon: Image.asset(
                  ImageAsset.LOGO,
                  alignment: Alignment(0.0,0.0),
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text("Brand", style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Model",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Referance",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Year",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Size",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Dial Color",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Case Material",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Condition",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text(
                                  " Full Set(Box\nWarranty\ncard",
                                  style: TextStyle(fontSize: 15, color: Color(0xFF777777),),textAlign: TextAlign.start,),
                                Divider(color: DividerColor,),
                                Text("Status",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Last Bid",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Asking Price",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Last Bidder IG\nAccount"
                                    , style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,), Text(
                                    "Number of\nBidders"
                                    , style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("Date",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text(
                                    "IG Auction\nAccount"
                                    , style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                                Text("COUNTRY",
                                    style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                Divider(color: DividerColor,),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${widget.auctionsModel.brand}", style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.model}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.referance}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text(widget.auctionsModel.year.toString(),
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.size}mm",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.dialColor}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.caseMaterial}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.condition}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.fullSet}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,height: 55),
                                Text("${widget.auctionsModel.status}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.price1}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.askingPrice}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
                                Text("${widget.auctionsModel.lastBidder}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,height: 40,),
                                Text("${widget.auctionsModel.numberOfBidders}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,height: 30,),
                                Text("${widget.auctionsModel.date}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,height: 18,),
                                Text("${widget.auctionsModel.igAccount}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,height: 30,),
                                Text("${widget.auctionsModel.country}",
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Divider(color: DividerColor,),
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
            child: Icon(Icons.credit_card,color: BlueColor,),
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