import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
class BottomSheett extends StatelessWidget {
  const BottomSheett({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0))),
        height: MediaQuery.of(context).size.height*0.9,
      child: Column(
        children: [
          TextFormField(
            
          )
        ],
      ),
    );
  }
}
