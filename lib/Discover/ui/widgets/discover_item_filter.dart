import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:flutter/material.dart';
class DiscoverFilterWidget extends StatelessWidget {
  final DiscoverFilter discoverFilter;
  const DiscoverFilterWidget({Key? key, required this.discoverFilter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Card(
        elevation: 1,
        child: Row(
          children: [
            Text(discoverFilter.Filter),
            Spacer(),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      ),
    );
  }
}
