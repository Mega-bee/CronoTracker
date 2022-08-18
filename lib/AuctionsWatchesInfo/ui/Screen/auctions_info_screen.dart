import 'package:flutter/material.dart';
import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../Auctions/Model/auctions_model.dart';
import '../../../utils/style/colors.dart';

class AuctionsInfo extends StatelessWidget {
  final AuctionsModel auctionsModel;

  const AuctionsInfo({Key? key, required this.auctionsModel}) : super(key: key);

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
              "${auctionsModel.image}",
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
                  Text("${auctionsModel.brand}", style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.model}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.referance}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text(auctionsModel.year.toString(),
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.size}mm",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.dialColor}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.caseMaterial}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.condition}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.fullSet}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,height: 55),
                  Text("${auctionsModel.status}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.price1}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.askingPrice}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,),
                  Text("${auctionsModel.lastBidder}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,height: 40,),
                  Text("${auctionsModel.numberOfBidders}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,height: 30,),
                  Text("${auctionsModel.date}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,height: 18,),
                  Text("${auctionsModel.igAccount}",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Divider(color: Colors.transparent,height: 30,),
                  Text("${auctionsModel.country}",
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
          onPressed: () {   showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomDeleteDialog(
                  title: 'Confirm',
                  content: 'Would you like to add the watch to you favorites ?',
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
          child: Icon(Icons.favorite),
          backgroundColor: PrimaryColor,
        ),
      ],
    ),
    );
  }
}
