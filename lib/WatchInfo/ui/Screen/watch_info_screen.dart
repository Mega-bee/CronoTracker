import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../NavigationBar/ui/Screen/navbar.dart';
import '../../../Trending/Model/trending_model.dart';
import '../../../utils/style/colors.dart';

class WatchDetailsScreen extends StatelessWidget {
final TrendingModel trendingModel;
  // WatchDetails? watchDetails;
  const WatchDetailsScreen({Key? key,required this.trendingModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomNavigationBarScreen()),
            );
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child:
                Image(
                  image: AssetImage(trendingModel.image.toString()),
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),),

                SizedBox(height: 10),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Brand',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('Omega'),
                    Spacer(),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Model Name',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('Speedmaster MoonSwatch'),
                    Spacer(),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Reference',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('SO33M100'),
                    Spacer(),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Nickname',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('Moon'),
                    Spacer(),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Dial Color',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('Black Dial'),
                    Spacer(),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Case Material',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('Bioceramic'),
                    Spacer(),
                  ],
                ),
              ],
            ),

        ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: () {  showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDeleteDialog(content:'Would you like to be instantly notified when this watch is listed in the next live action ?',
                      title: 'Confirm',
                      noBtn: ,
                      ,
                      ,
                      'No',
                      'Notify Me'
                  );
                }
            );
            },
            child: Icon(Icons.credit_card),
            backgroundColor: PrimaryColor,
          ),

          SizedBox(height: 5),

          FloatingActionButton(
            onPressed: () {   showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertMessageCard(
                      'Confirm',
                      'Would you like to be instantly notified when this watch is listed in the next live action ?',
                      'No',
                      'Notify Me'
                  );
                }
            );
            },
            child: Icon(Icons.favorite),
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );
  }
}
