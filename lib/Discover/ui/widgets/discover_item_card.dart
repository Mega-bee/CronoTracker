import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:flutter/material.dart';

import '../screens/brand_screen.dart';

class DiscoverItemCard extends StatelessWidget {
  
  DiscoverItem di;


  DiscoverItemCard(this.di);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BrandScreen(discoverItem: di)),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.4,
        height: MediaQuery.of(context).size.height*0.2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: AssetImage('${di.image}'),
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${di.label}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
