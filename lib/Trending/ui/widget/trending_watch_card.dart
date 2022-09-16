import 'package:cronotracker/Trending/model_classes/watch_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../WatchInfo/ui/Screen/watch_info_screen.dart';
import '../../../utils/style/colors.dart';

class BuildWatchCard extends StatelessWidget {
  final watchCard wc;
  int index;

  BuildWatchCard(this.wc, this.index);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.26,
      width: MediaQuery.of(context).size.width*0.45,
      child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WatchDetailsScreen(
                        trendingModel: wc,
                        index: index,
                      )),
            );
          },
          child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                elevation: 4,
                child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white70,
                                  blurRadius: 2.0,
                                  offset:
                                  Offset(1.0, 1.0), // shadow direction: bottom right
                                )
                              ],
                            ),
                            child:
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                              child: Center(
                          child: Image.asset(
                              '${wc.img}',
                              fit: BoxFit.contain,
                          ),
                        ),
                            ),),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Text(
                        "${wc.brand}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                    ),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Text(
                         "${wc.sellingPrice}\$",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF777777))
                      ),
                    ),
                        SizedBox(height: 3,),
                        Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Text(
                         "${wc.bidDate}",
                        style: TextStyle(
                          fontSize: 10, color: Color(0xFF777777))
                      ),
                    ),
                    // RichText(
                    //   text: TextSpan(
                    //       text: "${wc.brand}    ",
                    //       style: TextStyle(color: BlueColor),
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //           text: "     ${wc.sellingPrice}",
                    //           style: TextStyle(
                    //               color: Color(0xFF747474),
                    //               fontWeight: FontWeight.w400,
                    //               fontSize: 14),
                    //         ),
                    //       ]),
                    // ),
                    // RichText(
                    //   text: TextSpan(
                    //       text: " ",
                    //       style: TextStyle(color: BlueColor),
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //           text: "${wc.sellingPrice}",
                    //           style: TextStyle(
                    //               color: Color(0xFF747474),
                    //               fontWeight: FontWeight.w400,
                    //               fontSize: 14),
                    //         ),
                    //       ]),
                    // ),
                  ],
                ),
              ))),
    );
  }
}
