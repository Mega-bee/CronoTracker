import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:cronotracker/Favorites/ui/Widget/FavoriteCard.dart';
import 'package:cronotracker/SearchPage/ui/Widget/SearchWidget.dart';
import 'package:flutter/material.dart';

import '../Widget/SeacrhCard.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late List<AuctionsModel> userInfoModel;
  String query = '';

  @override
  void initState() {
    super.initState;

    userInfoModel = AuctionsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: SearchWidget(
              text: query, onChanged: search, hintText: 'Search Watches'),
          elevation: 0,
        ),
        body: Container(
          child: ListView.builder(
            itemCount: userInfoModel.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final AuctionsModell = userInfoModel[index];
              return SearchCard(
                auctionsModel: AuctionsModell,
                index: index,
              );
            },
          ),
        ));
  }

  void search(String query) {
    final Users = AuctionsList.where((AuctionsModel) {
      final nameLower = AuctionsModel.brand?.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower!.contains(searchLower);
    }).toList();
    setState(() {
      this.query = query;
      this.userInfoModel = Users;
    });
  }
}
