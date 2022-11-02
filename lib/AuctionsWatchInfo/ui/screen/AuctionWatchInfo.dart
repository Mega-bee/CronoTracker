import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../Auctions/Model/auctions_model.dart';
import '../../../My Collection/Model/FavoriteModel.dart';
import '../../../WatchInfo/Model/watch_info_model.dart';
import '../../../WatchInfo/ui/Widget/watch_info_card.dart';
import '../../../utils/Images/Images.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:grouped_list/grouped_list.dart';
import '../Widget/Modal bottom sheet.dart';
import '../../../Auctions/Model/auctions_model.dart';
import 'AuctionsWatchInfo1.dart';

class AuctionsInfo0 extends StatefulWidget {
  final AuctionsModel auctionsModel;

  int index;

  AuctionsInfo0({
    Key? key,
    required this.auctionsModel,
    required this.index,
  }) : super(key: key);

  @override
  State<AuctionsInfo0> createState() => _AuctionsInfo0State();
}

class _AuctionsInfo0State extends State<AuctionsInfo0> {
  Color fav = BlueColor;
  bool Mycollection = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: (CustomScrollView(slivers: [
        SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
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
                    decoration: BoxDecoration(
                      color: PrimaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child:   Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 10, 30, 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Brand: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.brand}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            // RichText(
                                            //   text: TextSpan(children: [
                                            //     TextSpan(
                                            //       text:
                                            //       ("- Nickname: "),
                                            //       style:TextStyle(
                                            //           fontWeight: FontWeight.w500,
                                            //           fontSize: 15,
                                            //           color: Colors.grey),
                                            //     ),
                                            //     TextSpan(
                                            //       text:"${widget.auctionsModel.nickname}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // Divider(
                                            //   color: Colors.transparent,
                                            //   height: 5,
                                            // ),
                                            // RichText(
                                            //   text: TextSpan(children: [
                                            //     TextSpan(
                                            //       text:
                                            //       ("- Case Material: "),
                                            //       style:TextStyle(
                                            //           fontWeight: FontWeight.w500,
                                            //           fontSize: 15,
                                            //           color: Colors.grey),
                                            //     ),
                                            //     TextSpan(
                                            //       text:"${widget.auctionsModel.caseMaterial}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // Divider(
                                            //   color: Colors.transparent,
                                            //   height: 5,
                                            // ),
                                            // RichText(
                                            //   text: TextSpan(children: [
                                            //     TextSpan(
                                            //       text:
                                            //       ("- Dial color: "),
                                            //       style:TextStyle(
                                            //           fontWeight: FontWeight.w500,
                                            //           fontSize: 15,
                                            //           color: Colors.grey),
                                            //     ),
                                            //     TextSpan(
                                            //       text:"${widget.auctionsModel.dialColor}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // // Text(
                                            // //     "- Dial color: ${widget.auctionsModel.dialColor}",
                                            // //     style: TextStyle(
                                            // //         fontWeight: FontWeight.w500,
                                            // //         fontSize: 15,
                                            // //         color: Colors.grey)),
                                            // Divider(
                                            //   color: Colors.transparent,
                                            //   height: 5,
                                            // ),
                                            // RichText(
                                            //   text: TextSpan(children: [
                                            //     TextSpan(
                                            //       text:
                                            //       ("- Bid Date: "),
                                            //       style:TextStyle(
                                            //           fontWeight: FontWeight.w500,
                                            //           fontSize: 15,
                                            //           color: Colors.grey),
                                            //     ),
                                            //     TextSpan(
                                            //       text:"${widget.auctionsModel.bidDate}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // // Text(
                                            // //     "- Bid Date: ${widget.auctionsModel.bidDate}",
                                            // //     style: TextStyle(
                                            // //         fontWeight: FontWeight.w500,
                                            // //         fontSize: 15,
                                            // //         color: Colors.grey)),
                                            // Divider(
                                            //   color: Colors.transparent,
                                            //   height: 5,
                                            // ),
                                            // RichText(
                                            //   text: TextSpan(children: [
                                            //     TextSpan(
                                            //       text:
                                            //       ("- Bracelet Material: "),
                                            //       style:TextStyle(
                                            //           fontWeight: FontWeight.w500,
                                            //           fontSize: 15,
                                            //           color: Colors.grey),
                                            //     ),
                                            //     TextSpan(
                                            //       text:"${widget.auctionsModel.braceletMaterial}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // // Text(
                                            // //     "- Bracelet Material: ${widget.auctionsModel.braceletMaterial}",
                                            // //     style: TextStyle(
                                            // //         fontWeight: FontWeight.w500,
                                            // //         fontSize: 15,
                                            // //         color: Colors.grey)),
                                            // Divider(
                                            //   color: Colors.transparent,
                                            //   height: 5,
                                            // ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Referance: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.referance}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Referance: ${widget.auctionsModel.reference}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Model: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.model}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Nickname: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.nickName}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Size: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.size}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Case Material: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.caseMaterial}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Dial Color: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.dialColor}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Diamond Dial: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.diamondDial}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Bezel Material: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.bezelMaterial}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),

                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text:
                                                      ("- Bracelet Material: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.braceletMaterial}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Production: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.production}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),

                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Limited: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.auctionsModel.limited}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.auctionsModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 15,
                                            ),
                                          ],
                                        )),
                                  ),
                    ),
                  ),
                ),
              ],
            ))
      ])),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           FloatingActionButton(
            onPressed: () {
             
                       Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AuctionsInfo(auctionsModel: widget.auctionsModel, index: 1,)));
            },
            child: Icon(
              Mycollection ? Icons.done : Icons.star,
              color: BlueColor,
            ),
            backgroundColor: PrimaryColor,
          ),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content:
                          'Would you like to be instantly notified when this watch is listed in the next live action ?',
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
              Icons.notifications_active,
              color: BlueColor,
            ),
            backgroundColor: PrimaryColor,
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return AlertDialog(
                      content: BottomSheett(),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    );
                  });
            },
            child: Icon(
              Mycollection ? Icons.done : Icons.star,
              color: BlueColor,
            ),
            backgroundColor: PrimaryColor,
          ),

        ],
      ),
    );
  }
}
