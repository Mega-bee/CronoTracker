import 'package:cronotracker/WatchInfo/Model/watch_info_model.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_converter/Currency.dart';
import 'package:money_converter/money_converter.dart';
import '../../../Trending/model_classes/watch_card.dart';
import 'bottom_sheet_watchinfo.dart';

class WatchInfoCard extends StatefulWidget {
  final watchCard trendingModel;
  final WatchDetails watchDetails;

  const WatchInfoCard(
      {Key? key, required this.trendingModel, required this.watchDetails})
      : super(key: key);

  @override
  State<WatchInfoCard> createState() => _WatchInfoCardState();
}

class _WatchInfoCardState extends State<WatchInfoCard> {
  String? AEDtoUSD;

  @override
  void initState() {
    super.initState();
    getAmounts();
  }

// call function to convert
  void getAmounts() async {
    var usdConvert = await MoneyConverter.convert(
        Currency(Currency.AED, amount: widget.watchDetails.price),
        Currency(Currency.USD));
    setState(() {
      AEDtoUSD = usdConvert.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 0, top: 0, right: 9, bottom: 5),
        child:
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              elevation: 0.5,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          color: PrimaryColor,
                          width: 80,
                          child: Image.asset(widget.trendingModel.img.toString(),fit: BoxFit.cover,),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text:
                                ("2022 Unworn - "),
                                style:TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              TextSpan(
                                text:
                                widget.watchDetails.status==true?"Sold":"Not Sold",
                                // "${widget.watchDetails.dialColor}",
                                style: TextStyle(
                                    color: widget.watchDetails.status ? Color(0xFF008000) : Colors.red , fontSize: 18),
                              ),
                            ]),
                          ),
                          // Text(
                          //   "2022 Unworn - ${widget.watchDetails.status}",
                          //   style: TextStyle(
                          //       color: Color(0xFF008000), fontSize: 16),
                          // ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Text(
                              widget.watchDetails.date.toString(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10),
                            ),
                          ),
                          Text(
                            "Selling Price ${Currency.AED}${widget.watchDetails.price} = $AEDtoUSD ${Currency.USD}",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return FavBottomSheet();
                              },
                            );
                          },
                          icon: Icon(Icons.more_vert_rounded))
                    ],
                  ),
                ),
        )));
  }
}
