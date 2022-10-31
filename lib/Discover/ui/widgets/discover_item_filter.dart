import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
class DiscoverFilterWidget extends StatelessWidget {
  final DiscoverFilter discoverFilter;
  final Widget widget;
  const DiscoverFilterWidget({Key? key, required this.discoverFilter, required this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => widget,));},
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
