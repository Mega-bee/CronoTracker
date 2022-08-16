import 'package:cronotracker/Auctions/models/auctions_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../DrawerMenu/ui/widgets/drawer_menu_widget.dart';
import '../../model_classes/watch_card.dart';
import '../widget/build_watch_card.dart';

class TrendingScreen extends StatelessWidget {

  int currentIndex = 0;

  watchCard? wc;

  List<watchCard> watches = [

    watchCard(
        img: 'assets/watch.jpg',
        brand: 'Omega',
        modelName: 'SpeedMaster SunSwatch',
        reference: 'SO7KG33H',
        nickname: 'Sun',
        dialColor: 'Brown',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '6',
        priceTracking: '40'
    ),

    watchCard(
        img: 'assets/watch2.jpg',
        brand: 'Rolex',
        modelName: 'Rolex-2421',
        reference: 'SO7KG33H',
        nickname: 'king',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '32'
    ),

    watchCard(
        img: 'assets/watch4 (1).jpg',
        brand: 'Quartz',
        modelName: 'fancy watch',
        reference: 'quartz-3421fds',
        nickname: 'cool watch',
        dialColor: 'blue',
        caseMaterial: 'silver',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '30'
    ),

    watchCard(
        img: 'assets/watch4 (2).jpg',
        brand: 'Fossil',
        modelName: 'fossilWatchCool',
        reference: 'fossil-6423',
        nickname: 'hello world',
        dialColor: 'Brown',
        caseMaterial: 'gold',
        braceletMaterial: 'Strap',
      soldMonth: '12',
      priceTracking: '10'
    ),

    watchCard(
        img: 'assets/watch5.jpg',
        brand: 'Casio',
        modelName: 'nice watch',
        reference: 'casio-3453',
        nickname: 'sweet',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '8'
    ),


  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.appBarPurple,
        actions: [
          IconButton(
            onPressed: (){
              showSearch(
                  context: context,
                  delegate: MysearchDelegate());},
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.refresh),
          ),

        ],

        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Stack(
                children: [

                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trending Watches below 10,000\$',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return BuildWatchCard(watches[index]);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: watches.length,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Stack(
                children: [

                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trending Watches Watches',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return BuildWatchCard(watches[index]);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: watches.length,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Stack(
                children: [

                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Most Trending Rose Gold Watches',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),
                  ),

                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return BuildWatchCard(watches[index]);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: watches.length,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],

          ),
        ),
      ),
      drawer: DrawerMenu(),



    );


  }
}

class MysearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    [
      IconButton(
          onPressed: (){
            if(query.isEmpty){
              close(context,null);
            }
            else {query="";}
          },
          icon: Icon(Icons.clear)),
    ];
  }@override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){close(context,null);},
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: AuctionsList.length,
          itemBuilder: (context, index) {
        return InkWell(
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AuctionsInfo(auctionsModel: AuctionsList[index],)
                  ))  ;          },
            child:Container(
          height: MediaQuery.of(context).size.height * 0.15,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(AuctionsList[index].image.toString(),fit: BoxFit.cover,),
                  )),
              Spacer(),
              Expanded(
                flex: 10,
                  child: Text(
                      AuctionsList[index].text.toString()
                  )
              ),
            ],
            )));
            },
          ),
        );
  }
}




