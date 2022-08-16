import 'package:flutter/cupertino.dart';

import '../../../Auctions/Model/auctions_model.dart';
import 'SrachItems.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
        shrinkWrap: false,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    itemCount: AuctionsList.length,
    itemBuilder: (context, index) {
      return SearchItems(auctionsModel: AuctionsList[index],);
    }));
  }
}
