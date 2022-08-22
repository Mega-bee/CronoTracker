import 'package:cronotracker/AlertMessage/ui/widget/alert_message_card.dart';
import 'package:cronotracker/Trending/model_classes/watch_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../BottomNavigationBar/ui/screens/bottom_navigation_bar_screen.dart';
import '../widget/bid_card.dart';

class WatchDetailsScreen extends StatelessWidget {

  String? image, brand, modelName, referece, nickname, dialColor, caseMaterial, braceletMaterial, soldMonth, priceTracking;


  WatchDetailsScreen({
    this.image,
    this.brand,
    this.modelName,
    this.referece,
    this.nickname,
    this.dialColor,
    this.caseMaterial,
    this.braceletMaterial,
    this.soldMonth,
    this.priceTracking
  });



  List<watchCard> bids = [

    watchCard(
      soldStatus: '2022 Unknown - Not Sold',
      bidDate: '1 August 2022',
      sellingPrice: 'Last Bid AED 2200 = 599 \$',
      img: 'assets/watch4 (2).jpg'
    ),
    watchCard(
        soldStatus: '2022 Unworn - Sold',
        bidDate: '30 July 2022',
        sellingPrice: 'Last Bid AED 2500 = 681 \$',
        img: 'assets/watch2.jpg'
    ),
    watchCard(
        soldStatus: '2022 Unworn - Sold',
        bidDate: '27 July 2022',
        sellingPrice: 'Last Bid AED 2300 = 627 \$',
        img: 'assets/watch5.jpg'
    ),
    watchCard(
        soldStatus: '2022 Unworn - Sold',
        bidDate: '25 July 2022',
        sellingPrice: 'Last Bid AED 2550 = 695 \$',
        img: 'assets/watch4 (1).jpg'
    ),
    watchCard(
        soldStatus: '2022 Unknown - Not Sold',
        bidDate: '20 July 2022',
        sellingPrice: 'Last Bid AED 2200 = 599 \$',
        img: 'assets/watch.jpg'
    ),   watchCard(
        soldStatus: '2022 Unknown - Not Sold',
        bidDate: '20 July 2022',
        sellingPrice: 'Last Bid AED 2200 = 599 \$',
        img: 'assets/watch.jpg'
    ),   watchCard(
        soldStatus: '2022 Unknown - Not Sold',
        bidDate: '20 July 2022',
        sellingPrice: 'Last Bid AED 2200 = 599 \$',
        img: 'assets/watch.jpg'
    ),   watchCard(
        soldStatus: '2022 Unknown - Not Sold',
        bidDate: '20 July 2022',
        sellingPrice: 'Last Bid AED 2200 = 599 \$',
        img: 'assets/watch.jpg'
    ),   watchCard(
        soldStatus: '2022 Unknown - Not Sold',
        bidDate: '20 July 2022',
        sellingPrice: 'Last Bid AED 2200 = 599 \$',
        img: 'assets/watch.jpg'
    ),   watchCard(
        soldStatus: '2022 Unknown - Not Sold',
        bidDate: '20 July 2022',
        sellingPrice: 'Last Bid AED 2200 = 599 \$',
        img: 'assets/watch.jpg'
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.appBarPurple,
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

          PopupMenuButton(
            itemBuilder: (BuildContext context) => [

            PopupMenuItem(
                child: GestureDetector(
              onTap: (){
                print('hello');
              },
              child: Container(
                width: 140,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Icon(Icons.favorite, color: Colors.black),
                    ),
                    SizedBox(width: 15),
                    Text('ADD'),
                  ],
                ),
              ),
            )),

            PopupMenuItem(child: GestureDetector(
              onTap: (){
                print('Hello');
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Icon(Icons.credit_card, color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text('Notify Me'),
                ],
              ),
            )),


          ],
          ),



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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image(
                  image: AssetImage('${this.image}'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Container(
                    width: 140,
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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

                          ],
                        ),
                        Row(
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

                          ],
                        ),
                        Row(
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

                          ],
                        ),
                        Row(
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

                          ],
                        ),
                        Row(
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
                          ],
                        ),
                        Row(
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

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Bracelet Material',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Spacer(),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Sold/Month',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Price Tracking',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: 220,
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.brand}',
                                  maxLines: 3

                              ),
                            ),
                            Spacer(),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.modelName}',
                                maxLines: 2,
                                style: TextStyle(
                                ),
                              ),
                            ),
                            Spacer(),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.referece}',

                              ),
                            ),
                            Spacer(),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.nickname}',

                              ),
                            ),
                            Spacer(),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.dialColor}',

                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.caseMaterial}',

                              ),
                            ),
                            Spacer(),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.braceletMaterial}',

                              ),
                            ),
                            Spacer(),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.soldMonth}',
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '${this.priceTracking}',
                              ),
                            ),
                            Spacer(),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),



              SizedBox(height: 10),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return BidCard(bids[index]);
                },
                itemCount: bids.length,
                shrinkWrap: true,
              ),

              SizedBox(height: 20,)


            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content: 'Would you like to be instantly notified when this watch is listed in the next live action ?',
                      yesBtn: (){
                        Navigator.pop(context);
                      },
                      noBtn: (){
                        Navigator.pop(context);
                      },
                    );
                  }
              );
            },
            child: Icon(Icons.credit_card),
            backgroundColor: Colors.appBarPurple,
          ),

          SizedBox(height: 5),


          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content: 'Would you like to add the watch to you favorites ?',
                      yesBtn: (){
                        Navigator.pop(context);
                      },
                      noBtn: (){
                        Navigator.pop(context);
                      },
                    );
                  }
              );
            },
            child: Icon(Icons.favorite),
            backgroundColor: Colors.appBarPurple,
          ),
        ],
      ),
    );
  }
}
