import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:flutter/material.dart';

import '../screens/brand_screen.dart';

class DiscoverItemCard extends StatelessWidget {
  
  DiscoverItem di;


  DiscoverItemCard(this.di);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BrandScreen(discoverItem: di)),
            );
          },
          child:Column(
              children: [
          SizedBox(
          width: MediaQuery.of(context).size.width*0.45,
          height: MediaQuery.of(context).size.height*0.15,
          child: Image.asset(
              '${di.image}',fit: BoxFit.fill,
          ),),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
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
      ),
    );
  }
}
