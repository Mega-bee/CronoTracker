import 'package:cronotracker/AlertMessage/ui/widget/alert_message_card.dart';
import 'package:cronotracker/Trending/model_classes/watch_card.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
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
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 10,
          titleSpacing: 10,
          backgroundColor: PrimaryColor,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 0, 16),
            child: TextField(
              controller: _textEditingController,
              autofocus: false,
              onChanged: (searchText) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Theme.of(context).primaryColor)),
                filled: true,
                fillColor: Color(0xFFF4F4F4),
                hintText: 'Jump to...',
                // suffixIcon: const ImageIcon(
                //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
                //   color: Color.fromRGBO(18, 108, 242, 1),
                // ),
                hintStyle: const TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
            ),
          ),
               actions:[
              Center(
                child: SizedBox(
                  width: 35,
                    height: 40,
                    child: InkWell(
                      onTap: () {},
                      child: Transform.scale(
                          scale: 2.5,
                          child:
                            Image.asset(
                              ImageAsset.LOGO,
                              alignment: Alignment(0.0,0.0),
                            ),
                          ),
                    ),
                ),
              ),
            ],
          leading: MenuWidget()),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image(
                  image: AssetImage('$image'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  SizedBox(
                    width: 140,
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
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
                  SizedBox(
                    width: 220,
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                '$brand',
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
                                '$modelName',
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
                                '$referece',

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
                                '$nickname',

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
                                '$dialColor',

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
                                '$caseMaterial',

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
                                '$braceletMaterial',

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
                                '$soldMonth',
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
                                '$priceTracking',
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
            backgroundColor: PrimaryColor,
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
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );
  }
}
