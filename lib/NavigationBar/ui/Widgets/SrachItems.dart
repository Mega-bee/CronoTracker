import 'package:flutter/cupertino.dart';

import '../../../Auctions/Model/auctions_model.dart';

class SearchItems extends StatelessWidget {
  final AuctionsModel auctionsModel;
  const SearchItems({Key? key, required this.auctionsModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width*0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.1,
            child:Image.asset("${auctionsModel.image}",fit: BoxFit.contain,)
          ),
          Text("${auctionsModel.text}")
        ],
      ),
    );
  }
  }

