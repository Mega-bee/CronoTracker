import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

import '../screens/brand_screen_2.dart';
class DiscoverFilterWidget extends StatelessWidget {
  final DiscoverFilter discoverFilter;
  const DiscoverFilterWidget({Key? key, required this.discoverFilter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => BrandScreen2(),));},
      child: SizedBox(
        height: 30,
        child: Card(
          color: PrimaryColor,
          elevation: 0,
          child: Row(
            children: [
              Text(discoverFilter.Filter),
              Spacer(),
              Icon(
                  Icons.arrow_forward_ios_rounded,size: 14,),
            ],
          ),
        ),
      ),
    );
  }
}
