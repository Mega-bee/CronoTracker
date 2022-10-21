import 'dart:math';

import 'package:cronotracker/WatchInfo/Model/watch_info_model.dart';
import 'package:cronotracker/WatchInfo/ui/Widget/watch_info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../Auctions/Model/auctions_model.dart';
import '../../../AuctionsWatchInfo/ui/Widget/Modal bottom sheet.dart';
import '../../../My Collection/Model/FavoriteModel.dart';
import '../../../Trending/Model/trending_model.dart';
import '../../../utils/Images/Images.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import '../../../utils/style/colors.dart';

class WatchDetailsScreen extends StatefulWidget {
  final AuctionsModel trendingModel;
  final WatchDetails? watchDetails;
  int index;

  // WatchDetails? watchDetails;
  WatchDetailsScreen(
      {Key? key,
      required this.trendingModel,
      required this.index,
      this.watchDetails})
      : super(key: key);

  @override
  State<WatchDetailsScreen> createState() => _WatchDetailsScreenState();
}

class _WatchDetailsScreenState extends State<WatchDetailsScreen> {
  Color fav = BlueColor;

  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
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
      body: DefaultTabController(
        length: 3,
        child: (CustomScrollView(slivers: [
          SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage(widget.trendingModel.image.toString()),
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
                        child: Column(
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            //   child: Row(
                            //     children: [
                            //       Text(
                            //         "${widget.trendingModel.modelName}",
                            //         style: TextStyle(
                            //             color: Colors.black,
                            //             fontWeight: FontWeight.w500,
                            //             fontSize: 18),
                            //       ),
                            //       Spacer(),
                            //       Text(
                            //         "${widget.trendingModel.sellingPrice}\$",
                            //         style: TextStyle(
                            //             color: Colors.black,
                            //             fontWeight: FontWeight.w500,
                            //             fontSize: 18),
                            //       )
                            //     ],
                            //   ),
                            // ),
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
                            // Align(
                            //   alignment: Alignment.topLeft,
                            //   child: Padding(
                            //     padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                            //     child:
                            //   ),
                            // ),
                            TabBar(
                              tabs: [
                                Tab(
                                  text: "Description",
                                  // style: TextStyle(
                                  //     color: Colors.black,
                                  //     fontWeight: FontWeight.w500,
                                  //     fontSize: 18),
                                ),
                                Tab(
                                  text: "Analysis",
                                ),
                                Tab(
                                  text: "Graph",
                                ),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.37,
                              child: TabBarView(
                                children: [
                                  Align(
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
                                                      "${widget.trendingModel.brand}",
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
                                            //       text:"${widget.trendingModel.nickname}",
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
                                            //       text:"${widget.trendingModel.caseMaterial}",
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
                                            //       text:"${widget.trendingModel.dialColor}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // // Text(
                                            // //     "- Dial color: ${widget.trendingModel.dialColor}",
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
                                            //       text:"${widget.trendingModel.bidDate}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // // Text(
                                            // //     "- Bid Date: ${widget.trendingModel.bidDate}",
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
                                            //       text:"${widget.trendingModel.braceletMaterial}",
                                            //       style: TextStyle(
                                            //           fontSize: 15,
                                            //           color: Colors.black),
                                            //     ),
                                            //   ]),
                                            // ),
                                            // // Text(
                                            // //     "- Bracelet Material: ${widget.trendingModel.braceletMaterial}",
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
                                                      "${widget.trendingModel.referance}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Referance: ${widget.trendingModel.reference}",
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
                                                      "${widget.trendingModel.model}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.trendingModel.soldMonth}",
                                            //     style: TextStyle(
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: 15,
                                            //         color: Colors.grey)),
                                            Divider(
                                              color: Colors.transparent,
                                              height: 5,
                                            ),
                                          ],
                                        )),
                                  ),
                                  Align(
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
                                                  text: ("- Retail Price: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.trendingModel.RetailPrice}",
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
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: ("- Price Range: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.trendingModel.priceRange}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Referance: ${widget.trendingModel.reference}",
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
                                                  text: ("- Sold/Month: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.trendingModel.soldMonth}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                            // Text(
                                            //     "- Sold Month: ${widget.trendingModel.soldMonth}",
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
                                                      ("- Selling Rate (Sold Watches/Listed Watches): "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${widget.trendingModel.SellingRate}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ]),
                                            ),
                                          ],
                                        )),
                                  ),
                                  SfCartesianChart(
                                      primaryXAxis: CategoryAxis(),
                                      // Chart title
                                      title: ChartTitle(text: 'Pice Tracking'),
                                      // Enable legend
                                      legend: Legend(isVisible: false),
                                      // Enable tooltip
                                      tooltipBehavior:
                                          TooltipBehavior(enable: true),
                                      series: <ChartSeries>[
                                        LineSeries<chartData, String>(
                                            dataSource: MonthChartData,
                                            xValueMapper: (chartData data, _) =>
                                                data.date,
                                            yValueMapper: (chartData data, _) =>
                                                data.price,
                                            // Enable data label
                                            dataLabelSettings:
                                                DataLabelSettings(
                                                    isVisible: true))
                                      ]),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                  child: Row(children: [
                                    Text(
                                      "Price Tracking",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(details.length.toString(),
                                        style: TextStyle(
                                            fontSize: 9.0,
                                            color: Colors.white,
                                            background: Paint()
                                              ..strokeWidth = 12.0
                                              ..color = Colors.grey
                                              ..style = PaintingStyle.stroke
                                              ..strokeJoin = StrokeJoin.round)),
                                  ])),
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            // StickyGroupedListView<dynamic, String>(
                            //   elements: details,
                            //   groupBy: (dynamic element) => element[widget.watchDetails?.date],
                            //   groupSeparatorBuilder: (dynamic element) =>
                            //       Text(element[widget.watchDetails?.date]),
                            //   itemBuilder: (context, index) {
                            //     return WatchInfoCard(
                            //       watchDetails: details[index],
                            //       trendingModel: widget.trendingModel,
                            //     );
                            //   },
                            //   // itemComparator: (e1, e2) =>
                            //   //     e1['name'].compareTo(e2['name']),
                            //   // optional
                            //   //  elementIdentifier: (element) => element.name
                            //   //  // optional - see below for usage
                            //   //  itemScrollController: itemScrollController,
                            //   //  // optional
                            //   //  order: StickyGroupedListOrder.ASC, // optional
                            // ),
                            // Center(
                            //   child: ListView.builder(
                            //     shrinkWrap: true,
                            //       itemCount: details.length,
                            //       itemBuilder: (_, index) {
                            //         bool isSameDate = true;
                            //         final String dateString = details[index][widget.watchDetails.date.toString()];
                            //         final DateTime date = DateTime.parse(dateString);
                            //         final item = details[index];
                            //         if (index == 0) {
                            //           isSameDate = false;
                            //         } else {
                            //           final String prevDateString = details[index - 1]['time'];
                            //           final DateTime prevDate = DateTime.parse(prevDateString);
                            //           isSameDate = date.isSameDate(prevDate);
                            //         }
                            //         if (index == 0 || !(isSameDate)) {
                            //           return Column(children: [
                            //             Text(date.formatDate()),
                            //             ListTile(title: Text('item $index'))
                            //           ]);
                            //         } else {
                            //           return ListTile(title: Text('item $index'));
                            //         }
                            //       }),
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                            //   child: GroupedListView<dynamic, WatchDetails>(
                            //     elements: details,
                            //     shrinkWrap: true,
                            //     groupBy: (element) => element[widget.watchDetails?.nickname],
                            //     groupSeparatorBuilder: (WatchDetails groupByValue) => Text(groupByValue.toString()),
                            //     itemBuilder: (context, element) {
                            //       return WatchInfoCard(
                            //                 watchDetails: details[element],
                            //                 trendingModel: widget.trendingModel,
                            //               );
                            //     },
                            //     // itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']), // optional
                            //     useStickyGroupSeparators: true, // optional
                            //     floatingHeader: true, // optional
                            //     order: GroupedListOrder.ASC, // optional
                            //   ),
                            // ),

                            Padding(
                                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                                child: GroupedListView<dynamic, String>(
                                    useStickyGroupSeparators: true,
                                    shrinkWrap: true,
                                    elements: AuctionsList,
                                    groupBy: (element) => element.date,
                                    groupSeparatorBuilder: (value) => Container(
                                          child: Text(value),
                                        ),
                                    order: GroupedListOrder.ASC,
                                    // groupComparator: ((value1, value2) => value1.compareTo(value2)),
                                    indexedItemBuilder: (context, element,
                                            index) =>
                                        WatchInfoCard(
                                          trendingModel: AuctionsList[index],
                                          auctionsModel: widget.trendingModel,
                                        ),
                                    reverse: true)

                                //   ListView.builder(
                                //   physics: NeverScrollableScrollPhysics(),
                                //   itemCount: details.length,
                                //   shrinkWrap: true,
                                //   itemBuilder: (context, index) {
                                //     return WatchInfoCard(
                                //       trendingModel: AuctionsList[index],
                                //       auctionsModel: widget.trendingModel,
                                //     );
                                //   },
                                // ),
                                )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ])),
      ),
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
                          'Would you like to add the watch to you favorites ?',
                      yesBtn: () {
                        setState(() {
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    content: BottomSheett(),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Submit',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ))
                                    ],
                                  ));
                          print("hi");
                          setState(() {
                            favoriteList.add(AuctionsList[widget.index]);
                           
                          });

                          // favoriteList.add(AuctionsList[widget.index]);
                          // Navigator.pop(context);
                          // fav = Colors.red;
                        });
                      },
                      noBtn: () {
                        Navigator.pop(context);
                      },
                    );
                  });
            },
            child: Icon(
              Icons.star,
              color: fav,
            ),
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );

    //   SingleChildScrollView(
    //     child: SizedBox(
    //       width: double.infinity,
    //       child: Padding(
    //         padding:EdgeInsets.only(left: 15,right: 15),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               height: MediaQuery.of(context).size.height * 0.35,
    //               width: double.infinity,
    //               child: Image(
    //                 image: AssetImage(widget.trendingModel.img.toString()),
    //                 fit: BoxFit.cover,
    //                 width: double.infinity,
    //               ),
    //             ),
    //         WillPopScope(
    //             onWillPop: () {},
    //             child: **your bottom sheet**
    //         )),
    //   );
    //             SizedBox(height: 20),
    //             SizedBox(child: Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),),
    //             SizedBox(height: 10),
    //             Padding(
    //               padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Flexible(
    //                     flex: 1,
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children:  [
    //                         Text("Brand", style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.black,),
    //                         Text("Model",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Referance",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Nickname",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Size",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Dial Color",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Case Material",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Bracelet Material",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Sold/Month",
    //                             style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
    //                         Divider(color: Colors.transparent,),
    //                       ],
    //                     ),
    //                   ),
    //                   Flexible(
    //                     flex: 2,
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children:  [
    //                         Text("Swatch", style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Speedmaster MoonSwatch",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("SO33L100",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Uranus",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("42mm",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Tiffany Dial",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Bioceramic",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("Strap",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                         Text("13",
    //                             style: TextStyle(fontSize: 15, color: Colors.black)),
    //                         Divider(color: Colors.transparent,),
    //                       ],
    //                     ),
    //                   ),
    //                   // Divider(height: 20,color: Colors.black,),
    //                   // Padding(
    //                   //   padding: const EdgeInsets.only(left: 16.0,top: 7,bottom: 7),
    //                   //   child: Align(
    //                   //     alignment: Alignment.topLeft,
    //                   //     child:
    //                   //     RichText(
    //                   //       text: TextSpan(
    //                   //           text:  "Price Tracking    ",
    //                   //           style: TextStyle(color: BlueColor),
    //                   //           children: <TextSpan>[
    //                   //             TextSpan(
    //                   //                 text: "${widget.trendingModel.priceTracking}",
    //                   //                 style: TextStyle(
    //                   //                     fontSize: 15.0,
    //                   //                     color: Colors.white,
    //                   //                     background: Paint()
    //                   //                       ..strokeWidth = 14.0
    //                   //                       ..color = Colors.grey
    //                   //                       ..style = PaintingStyle.stroke
    //                   //                       ..strokeJoin = StrokeJoin.round))
    //                   //           ]
    //                   //       ),
    //                   //     ),
    //                   //   ),
    //                   // ),
    //                   // Divider(height: 20,color: Colors.black,),
    //                   // ListView.builder(
    //                   //   physics: NeverScrollableScrollPhysics(),
    //                   //   itemCount: details.length,
    //                   //   shrinkWrap: true,
    //                   //   itemBuilder: (context, index) {
    //                   //     return WatchInfoCard(watchDetails: details[index],trendingModel: widget.trendingModel,);
    //                   //   },
    //                   // ),
    //                 ],
    //               ),
    //             ),
    //
    //             // Divider(height: 20,color: Colors.black,),
    //             Align(
    //               alignment: Alignment.topLeft,
    //                 child:
    //             RichText(
    //               text: TextSpan(
    //                   text:  "Price Tracking    ",
    //                   style: TextStyle(color: BlueColor),
    //                   children: <TextSpan>[
    //                     TextSpan(
    //                       text: "${widget.trendingModel.priceTracking}",
    //                       style: TextStyle(
    //                           fontSize: 15.0,
    //                           color: Colors.white,
    //                           background: Paint()
    //                             ..strokeWidth = 14.0
    //                             ..color = Colors.grey
    //                             ..style = PaintingStyle.stroke
    //                             ..strokeJoin = StrokeJoin.round))
    //                   ]
    //               ),
    //             ),
    //             ),
    //             // Divider(height: 20,color: Colors.transparent,),
    //            ListView.builder(
    //              physics: NeverScrollableScrollPhysics(),
    //               itemCount: details.length,
    //               shrinkWrap: true,
    //               itemBuilder: (context, index) {
    //                 return WatchInfoCard(watchDetails: details[index],trendingModel: widget.trendingModel,);
    //               },
    //             ),
    // ],
    //         ),
    //       ),
    //     ),
    //   ),
    //   floatingActionButton: Column(
    //     crossAxisAlignment: CrossAxisAlignment.end,
    //     mainAxisAlignment: MainAxisAlignment.end,
    //     children: [
    //
    //       FloatingActionButton(
    //         onPressed: () {
    //           showDialog(
    //               context: context,
    //               builder: (BuildContext context) {
    //                 return CustomDeleteDialog(
    //                   title: 'Confirm',
    //                   content: 'Would you like to be instantly notified when this watch is listed in the next live action ?',
    //                   yesBtn: (){
    //                     Navigator.pop(context);
    //                   },
    //                   noBtn: (){
    //                     Navigator.pop(context);
    //                   },
    //                 );
    //               }
    //           );
    //         },
    //         child: Icon(Icons.credit_card,color: BlueColor,),
    //         backgroundColor: PrimaryColor,
    //       ),
    //
    //       SizedBox(height: 5),
    //
    //       FloatingActionButton(
    //         onPressed: () {  showDialog(
    //             context: context,
    //             builder: (BuildContext context) {
    //               return CustomDeleteDialog(
    //                 title: 'Confirm',
    //                 content: 'Would you like to add the watch to you favorites ?',
    //                 yesBtn: (){
    //                   setState(() {
    //                     favoriteList.add(AuctionsList[widget.index]);
    //                     Navigator.pop(context);
    //                     fav = Colors.red;
    //                   });
    //                 },
    //                 noBtn: (){
    //                   Navigator.pop(context);
    //                 },
    //               );
    //             }
    //         );
    //         },
    //         child: Icon(Icons.favorite,color: fav,),
    //         backgroundColor: PrimaryColor,
    //       ),
    //     ],
    //   ),
    // );
  }
}
