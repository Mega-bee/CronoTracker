import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoverItemCard extends StatelessWidget {
  
  DiscoverItem? di;


  DiscoverItemCard(this.di);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('pressed !');
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
                image: AssetImage('${di?.image}'),
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${di?.label}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
