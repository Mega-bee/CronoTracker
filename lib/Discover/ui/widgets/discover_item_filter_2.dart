import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

import '../screens/brand_screen3.dart';
class DiscoverFilterWidget2 extends StatelessWidget {
  final DiscoverFilter discoverFilter;
  const DiscoverFilterWidget2({Key? key, required this.discoverFilter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => BrandScreen3(),));},
      child: SizedBox(
        height: 50,
        child: Card(
          color: PrimaryColor,
          elevation: 0,
          child: Row(
            children: [
              Text(discoverFilter.Filter),
              Spacer(),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios_rounded),iconSize: 14,)
            ],
          ),
        ),
      ),
    );
  }
}
