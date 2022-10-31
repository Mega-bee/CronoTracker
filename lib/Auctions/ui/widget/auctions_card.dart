import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_converter/Currency.dart';
import 'package:money_converter/money_converter.dart';

import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';

class AuctionsCard extends StatefulWidget {
  final AuctionsModel auctionsModel;
  final int index;

  const AuctionsCard({Key? key, required this.auctionsModel, required this.index}) : super(key: key);

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
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AuctionsInfo(auctionsModel: widget.auctionsModel, index: 1,)));
      },
      child: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.39,
        child: Padding(
          padding: const EdgeInsets.only(
              left: 11, right: 11, top: 13, bottom: 11),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 0, right: 23,bottom: 10),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer()       ,
                        // Expanded(
                                Text("${widget.auctionsModel.text}",
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  style: TextStyle(fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF000000)),),
                              Spacer(),
                              Text(widget.auctionsModel.status?"Sold":"Not sold",

                                  style: widget.auctionsModel.status? TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD4181E))
                              : TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green[700])
                              ),
                              Text(
                                widget.auctionsModel.status == true
                                    ? "Selling Price  "
                                    : widget.auctionsModel.status == false
                                    ? "Last Bid"
                                    : "Asking Price ",
                                style: TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                        Text(
                               "${Currency.AED} ${widget.auctionsModel.price} ",
                          style: TextStyle(color: BlueColor, fontSize: 17,),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                      child: SizedBox(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.16,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.4,
                              child: Image.asset("${widget.auctionsModel.image}",
                                fit: BoxFit.contain,),
                            ),)
                  // Center(
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       SizedBox(
                  //         height: MediaQuery
                  //             .of(context)
                  //             .size
                  //             .height * 0.16,
                  //         width: double.infinity,
                  //         child: Image.asset("${widget.auctionsModel.image}",
                  //           fit: BoxFit.contain,),
                  //       ),
                  //       Text("${widget.auctionsModel.text}", style: TextStyle(fontSize: 15,
                  //           fontWeight: FontWeight.bold,
                  //           color: Color(0xFF000000)),),
                  //       Text(widget.auctionsModel.status?"Sold":"Not sold",
                  //
                  //           style: widget.auctionsModel.status? TextStyle(
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.bold,
                  //           color: Color(0xFFD4181E))
                  //       : TextStyle(
                  //               fontSize: 15,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.green[700])
                  //       ),
                  //       Text(
                  //         widget.auctionsModel.status == true
                  //             ? "Selling Price ${Currency.AED}${widget.auctionsModel.price} = $AEDtoUSD ${Currency.USD}"
                  //             : widget.auctionsModel.status == false
                  //             ? "Last Bid ${Currency.AED}${widget.auctionsModel.price} = $AEDtoUSD ${Currency.USD}"
                  //             : "Asking Price ${Currency.AED}${widget.auctionsModel.price} = $AEDtoUSD ${Currency.USD}",
                  //         style: TextStyle(color: Colors.grey, fontSize: 14),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
