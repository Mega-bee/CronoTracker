import 'package:cronotracker/WatchInfo/Model/watch_info_model.dart';
import 'package:flutter/material.dart';
import 'package:money_converter/Currency.dart';
import 'package:money_converter/money_converter.dart';
import '../../../Trending/model_classes/watch_card.dart';
import 'bottom_sheet_watchinfo.dart';
class WatchInfoCard extends StatefulWidget {
  final watchCard trendingModel;
  final WatchDetails watchDetails;
  const WatchInfoCard({Key? key, required this.trendingModel, required this.watchDetails}) : super(key: key);

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
        Currency(Currency.AED, amount:widget.watchDetails.price), Currency(Currency.USD));
    setState(() {
      AEDtoUSD = usdConvert.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 0 , top: 20, right: 9, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.watchDetails.date.toString(),
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF3A3A3A)),
            ),
            Card(
              elevation: 0.5,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Image.asset(widget.trendingModel.img.toString()),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("2022 Unworn - ${widget.watchDetails.status}",
                          style: TextStyle(color: Colors.lightGreenAccent,fontSize: 16),
                        ),
                        Text("Selling Price ${Currency.AED}${widget.watchDetails.price} = $AEDtoUSD ${Currency.USD}",
                          style: TextStyle(color: Colors.grey,fontSize: 12),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: (){
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
            ),
          ],
        ));
  }
}
