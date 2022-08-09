import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model_classes/watch_card.dart';


class BuildWatchCard extends StatelessWidget {

  final watchCard wc;

  BuildWatchCard(this.wc);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              offset: Offset(1.0, 1.0), // shadow direction: bottom right
            )
          ],
        ),
        width: 100,
        child: Image(
          width: double.infinity,
          height: double.infinity,
          image: AssetImage('${wc.img}'),
        ),
      ),
    );


  }
}
