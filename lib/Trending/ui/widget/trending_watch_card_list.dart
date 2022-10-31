import 'package:cronotracker/Trending/ui/widget/trending_watch_card.dart';
import 'package:flutter/material.dart';

import '../../../Auctions/Model/auctions_model.dart';

class TrendingCardList extends StatelessWidget {
 final  int index;

  const TrendingCardList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              AuctionsList[index].brand!,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.31,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(1.0),
          //   color: Colors.white,
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey,
          //       blurRadius: 2.0,
          //       spreadRadius: 0.0,
          //       offset: Offset(1.0, 1.0),
          //     )
          //   ],
          // ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.26,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return BuildWatchCard(index: index, wc: AuctionsList[index]);
                },
                scrollDirection: Axis.horizontal,
                itemCount: AuctionsList.length,
                shrinkWrap: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
