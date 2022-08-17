import 'package:flutter/material.dart';

class AlertMessageCard extends StatelessWidget {
  String? label1, label2, b1, b2;
  AlertMessageCard(this.label1, this.label2, this.b1, this.b2);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
    height: 195,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
    ),
    child: Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Text('${this.label1}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
              ],
            ),
          ),
        ),

        SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Text('${this.label2}', style: TextStyle(color: Colors.grey), textAlign: TextAlign.left,),
        ),


        SizedBox(height: 15),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, right: 8, left: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Spacer(),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('${this.b1}', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.appBarPurple,
                    ),
                  ),
                ),
                SizedBox(width: 6),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('${this.b2}', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.appBarPurple,
                ),
                ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}