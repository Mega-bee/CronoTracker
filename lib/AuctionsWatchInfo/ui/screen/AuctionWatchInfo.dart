import 'package:cronotracker/Favorites/Model/FavoriteModel.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../Auctions/Model/auctions_model.dart';
import '../../../utils/Images/Images.dart';

class AuctionsInfo extends StatefulWidget {
  final AuctionsModel auctionsModel;
  int index;

  AuctionsInfo({Key? key, required this.auctionsModel, required this.index})
      : super(key: key);

  @override
  State<AuctionsInfo> createState() => _AuctionsInfoState();
}

class _AuctionsInfoState extends State<AuctionsInfo> {
  Color fav = BlueColor;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PrimaryColor,
        actions: [
          Transform.scale(
              scale: 2.5,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  ImageAsset.LOGO,
                  alignment: Alignment(0.0, 0.0),
                ),
              )),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage(widget.auctionsModel.image.toString()),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: Row(
                            children: [
                              Text(
                                "${widget.auctionsModel.model}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Spacer(),
                              Text(
                                "${widget.auctionsModel.askingPrice}\$",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(bottom: 20),
                        //   child: Text(
                        //     "${widget.trendingModel.nickname}",
                        //     style: TextStyle(
                        //     fontSize: 15, color: Colors.grey)),
                        //   ),
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("- Brand: ${widget.auctionsModel.brand}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Referance: ${widget.auctionsModel.referance}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Year : ${widget.auctionsModel.year.toString()}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Size : ${widget.auctionsModel.size}mm",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Dial Color : ${widget.auctionsModel.dialColor}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Case Material : ${widget.auctionsModel.caseMaterial}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Condition : ${widget.auctionsModel.condition}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Full Set : ${widget.auctionsModel.fullSet}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Status : ${widget.auctionsModel.status}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Last Bidder : ${widget.auctionsModel.lastBidder}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Number of bidders : ${widget.auctionsModel.numberOfBidders}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text("- Date : ${widget.auctionsModel.date}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Ig account : ${widget.auctionsModel.igAccount}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                  Text(
                                      "- Country : ${widget.auctionsModel.country}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Divider(
                                    color: Colors.transparent,
                                    height: 5,
                                  ),
                                ],
                              )),
                        ),
                        // SizedBox(
                        //   height: 25,
                        // ),
                        // Text("Brand",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Model",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Referance",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Year",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Size",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Dial Color",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Case Material",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Condition",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text(
                        //   " Full Set(Box\nWarranty\ncard",
                        //   style: TextStyle(
                        //     fontSize: 15,
                        //     color: Color(0xFF777777),
                        //   ),
                        //   textAlign: TextAlign.start,
                        // ),
                        // Text("Status",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Last Bid",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Asking Price",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Last Bidder IG\nAccount",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Number of\nBidders",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("Date",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("IG Auction\nAccount",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                        // Text("COUNTRY",
                        //     style: TextStyle(
                        //         fontSize: 15, color: Color(0xFF777777))),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text("${widget.auctionsModel.brand}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.model}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.referance}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text(widget.auctionsModel.year.toString(),
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.size}mm",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.dialColor}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.caseMaterial}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.condition}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.fullSet}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.status}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.price1}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.askingPrice}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.lastBidder}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.numberOfBidders}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.date}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.igAccount}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //       Text("${widget.auctionsModel.country}",
                  //           style:
                  //               TextStyle(fontSize: 15, color: Colors.black)),
                  //     ],
                  //   ),
                  // )))
                ))
          ]),
        )
      ]),
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
                      content:
                          '''Would you like to be instantly notified when this watch is listed in the next live action ?''',
                      yesBtn: () {
                        Navigator.pop(context);
                      },
                      noBtn: () {
                        Navigator.pop(context);
                      },
                    );
                  });
            },
            child: Icon(
              Icons.credit_card,
              color: BlueColor,
            ),
            backgroundColor: PrimaryColor,
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content:
                          '''Would you like to add the watch to you favorites ?''',
                      yesBtn: () {
                        setState(() {
                          favoriteList.add(AuctionsList[widget.index]);
                          Navigator.pop(context);
                          fav = Colors.red;
                        });
                      },
                      noBtn: () {
                        Navigator.pop(context);
                      },
                    );
                  });
            },
            child: Icon(
              Icons.favorite,
              color: fav,
            ),
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );
  }
}
// body: Column(
// children: [
// Flexible(
// flex: 1,
// child: Image(
// image: AssetImage(widget.trendingModel.img.toString()),
// fit: BoxFit.cover,
// width: double.infinity,
// ),
// ),
// Flexible(
// flex: 2,
// child: Container(
// decoration: BoxDecoration(
// color: PrimaryColor,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(40),
// topRight: Radius.circular(40),
// ),
// ),
// child: SingleChildScrollView(
// child: Column(
// children: [
// Padding(
// padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
// child: Row(
// children: [
// Text(
// "${widget.trendingModel.modelName}",
// style: TextStyle(
// color: Colors.black,
// fontWeight: FontWeight.w500,
// fontSize: 18),
// ),
// Spacer(),
// Text(
// "${widget.trendingModel.sellingPrice}\$",
// style: TextStyle(
// color: Colors.black,
// fontWeight: FontWeight.w500,
// fontSize: 18),
// )
// ],
// ),
// ),
// // Padding(
// //   padding: const EdgeInsets.only(bottom: 20),
// //   child: Text(
// //     "${widget.trendingModel.nickname}",
// //     style: TextStyle(
// //     fontSize: 15, color: Colors.grey)),
// //   ),
// // ),
// SizedBox(
// height: 15,
// ),
// Align(
// alignment: Alignment.topLeft,
// child: Padding(
// padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
// child: Text(
// "Description",
// style: TextStyle(
// color: Colors.black,
// fontWeight: FontWeight.w500,
// fontSize: 18),
// ),
// ),
// ),
// Align(
// alignment: Alignment.topLeft,
// child: Padding(
// padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("- Brand: ${widget.trendingModel.brand}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// Text(
// "- Nickname: ${widget.trendingModel.nickname}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// Text(
// "- Case Material: ${widget.trendingModel.caseMaterial}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// Text(
// "- Dial color: ${widget.trendingModel.dialColor}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// Text(
// "- Bid Date: ${widget.trendingModel.bidDate}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// Text(
// "- Bracelet Material: ${widget.trendingModel.braceletMaterial}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// Text(
// "- Referance: ${widget.trendingModel.reference}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// Text(
// "- Sold Month: ${widget.trendingModel.soldMonth}",
// style: TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 15,
// color: Colors.grey)),
// Divider(
// color: Colors.transparent,
// height: 5,
// ),
// ],
// )),
// ),
// SizedBox(
// height: 25,
// ),
// Align(
// alignment: Alignment.topLeft,
// child: Padding(
// padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
// child:Row(
// children: [
// Text("Price Tracking",style: TextStyle(
// color: Colors.black,
// fontWeight: FontWeight.w500,
// fontSize: 18),),
// SizedBox(width: 15,),
// Text(
// "${widget.trendingModel.priceTracking}",
// style: TextStyle(
// fontSize: 9.0,
// color: Colors.white,
// background: Paint()
// ..strokeWidth = 12.0
// ..color = Colors.grey
// ..style = PaintingStyle.stroke
// ..strokeJoin = StrokeJoin.round)),
// ])
// ),
// ),
