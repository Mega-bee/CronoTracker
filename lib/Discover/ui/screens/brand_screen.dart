import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

class BrandScreen extends StatelessWidget {

  final DiscoverItem discoverItem;

  const BrandScreen({Key? key, required this.discoverItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text(discoverItem.label.toString()),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          discoverItem.label.toString()
        ),
      ),

    );
  }
}
