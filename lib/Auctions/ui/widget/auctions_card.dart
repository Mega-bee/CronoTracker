import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_converter/Currency.dart';
import 'package:money_converter/money_converter.dart';

import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../utils/Images/Images.dart';

class AuctionsCard extends StatefulWidget {
  final AuctionsModel auctionsModel;
  int index;
  AuctionsCard({Key? key, required this.auctionsModel,required this.index}) : super(key: key);

  @override
  State<AuctionsCard> createState() => _AuctionsCardState();
}

class _AuctionsCardState extends State<AuctionsCard> {
  String? AEDtoUSD;

  @override
  void initState() {
    super.initState();
    getAmounts();
  }

// call function to convert
  void getAmounts() async {
    var usdConvert = await MoneyConverter.convert(
        Currency(Currency.AED, amount: widget.auctionsModel.price),
        Currency(Currency.USD));
    setState(() {
      AEDtoUSD = usdConvert.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AuctionsInfo(
                    auctionsModel: widget.auctionsModel,
                    index: widget.index,
                  )));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
              children:[Padding(
                padding:
                const EdgeInsets.only(left: 11, right: 11, top: 13, bottom: 11),
                child:
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 9, right: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.16,
                                  width: double.infinity,
                                  child: Image.asset(
                                    "${widget.auctionsModel.image}",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "${widget.auctionsModel.text}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(widget.auctionsModel.status == true
                                        ? "Selling Price ${Currency.AED}${widget.auctionsModel.price} = $AEDtoUSD ${Currency.USD}"
                                    : widget.auctionsModel.status == false
                                ? "Last Bid ${Currency.AED}${widget.auctionsModel.price} = $AEDtoUSD ${Currency.USD}"
                                    : "Asking Price ${Currency.AED}${widget.auctionsModel.price} = $AEDtoUSD ${Currency.USD}",                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF777777))),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text("${widget.auctionsModel.date}",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFF777777))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),),
                widget.auctionsModel.status == true?
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height*0.1,
                              width: MediaQuery.of(context).size.width*0.1,
                              child: Image.asset(ImageAsset.SOLDOUT)),
                        )
                      // Text("${auctionsModel.status}",
                      //     style: TextStyle(
                      //         fontSize: 15,
                      //         fontWeight: FontWeight.bold,
                      //         color: Color(0xFFD4181E))),
                    )):Container()
              ]),
        ),
      ),
    );
  }
}
