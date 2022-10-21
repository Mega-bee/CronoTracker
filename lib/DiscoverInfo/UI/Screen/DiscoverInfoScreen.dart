import 'package:flutter/material.dart';

import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../Auctions/Model/auctions_model.dart';
import '../../../AuctionsWatchInfo/ui/Widget/Modal bottom sheet.dart';
import '../../../My Collection/Model/FavoriteModel.dart';
import '../../../WatchInfo/Model/watch_info_model.dart';
import '../../../WatchInfo/ui/Widget/watch_info_card.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class DiscoverInfoScreen extends StatefulWidget {
  final AuctionsModel auctionsModel;
  int index;
  DiscoverInfoScreen({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  State<DiscoverInfoScreen> createState() => _DiscoverInfoScreenState();
}

class _DiscoverInfoScreenState extends State<DiscoverInfoScreen> {
  Color fav = BlueColor;
  bool Mycollection = false;
  @override
  Widget build(BuildContext context) {
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
                  // Expanded(
                  //   flex: 1,
                  //   child: Image(
                  //     image: AssetImage(widget.auctionsModel.image.toString()),
                  //     fit: BoxFit.cover,
                  //     width: double.infinity,
                  //   ),
                  // ),
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
                         
                              
                    
                       Container(
                         child: Image(
                      image: AssetImage(widget.auctionsModel.image.toString()),
                 
                      width: double.infinity,
                    ),
                       ),
                  
                            SizedBox(
                              height: 15,
                            ),

                            TabBar(
                              indicatorColor:BlueColor,
                              tabs: [
                                Tab(
                                  text: "Description",
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
                              height: MediaQuery.of(context).size.height * 0.52,
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
                                                  "${widget.auctionsModel.RetailPrice}",
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
                                                  "${widget.auctionsModel.priceRange}",
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
                                                  text: ("- Sold/Month: "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                  "${widget.auctionsModel.soldMonth}",
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
                                                  ("- Selling Rate (Sold Watches/Listed Watches): "),
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.grey),
                                                ),
                                                TextSpan(
                                                  text:
                                                  "${widget.auctionsModel.SellingRate}",
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
                            //       auctionsModel: widget.auctionsModel,
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
                            //                 auctionsModel: widget.trendingModel,
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
                              child: GroupedListView<dynamic,String>(
                                useStickyGroupSeparators: true,
                                shrinkWrap: true,
                                elements: AuctionsList,
                                groupBy: (element) => element.date,
                                groupSeparatorBuilder: (value) => Container(
                                  child: Text(value),
                                  
                                ),
                                groupComparator: ((value1, value2) => value1.compareTo(value2)),
                                indexedItemBuilder: (context, element, index) => WatchInfoCard(
                                 trendingModel: AuctionsList[index],
                                  auctionsModel: widget.auctionsModel,
                               ),
                               reverse: true,
                                )
                              
                              // ListView.builder(
                              //   physics: NeverScrollableScrollPhysics(),
                              //   itemCount: details.length,
                              //   shrinkWrap: true,
                              //   itemBuilder: (context, index) {
                              //     return WatchInfoCard(
                              //       trendingModel: AuctionsList[index],
                              //       auctionsModel: widget.auctionsModel,
                              //     );
                              //   },
                              // ),
                            ),
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
                  builder: (BuildContext ctx) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content:
                      'Would you like to add this watch to your collection ?',
                      yesBtn: () {
                        Navigator.pop(context);
                        showDialog(context: context, builder: (context)=>AlertDialog( content: BottomSheett(),  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Submit',style: TextStyle(color: Colors.black),))
                                  ],));
                        print("hi");
                        setState(() {
                          favoriteList.add(AuctionsList[widget.index]);
                          fav = Colors.red;
                          Mycollection=true;
                        });
                      },
                      noBtn: () {
                        Navigator.pop(context);
                      },
                    );
                  });
            },
            child: Icon(
              Mycollection?
              Icons.done:
              Icons.star,
              color: BlueColor,
            ),
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );
  }
}
