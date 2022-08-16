import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Trending/model_classes/watch_card.dart';

class BidCard extends StatelessWidget {

  watchCard? wc;

  BidCard(this.wc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.grey[200],
            height: 35,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${wc?.bidDate}'
              ),
            ),
          ),
          Container(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('${wc?.img}'),
                  height: 70,
                  width: 70,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${wc?.soldStatus}',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '${wc?.sellingPrice}',
                        style: TextStyle(
                            color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),

                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: new Icon(Icons.favorite),
                                title: new Text('ADD'),
                                onTap: () {
                                  print('pressed !');
                                },
                              ),
                              ListTile(
                                leading: new Icon(Icons.campaign),
                                title: new Text('Notify Me'),
                                onTap: () {
                                  print('pressed !');
                                },
                              ),
                              ListTile(
                                leading: new Icon(Icons.open_in_new),
                                title: new Text('Open URL (Photo)'),
                                onTap: () {
                                  print('pressed !');
                                },
                              ),
                            ],
                          );
                        });
                  },
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
