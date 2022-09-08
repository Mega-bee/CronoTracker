import 'package:cronotracker/utils/Images/Images.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import '../Widget/trending_watch_card.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../model_classes/watch_card.dart';

class TrendingScreen extends StatelessWidget {
  int currentIndex = 0;

  watchCard? wc;

  List<watchCard> watches = [
    watchCard(
        img: 'assets/images/watch.jpg',
        brand: 'Omega',
        modelName: 'SpeedMaster SunSwatch',
        reference: 'SO7KG33H',
        nickname: 'Sun',
        dialColor: 'Brown',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '6',
        priceTracking: '40',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch2.jpg',
        brand: 'Rolex',
        modelName: 'Rolex-2421',
        reference: 'SO7KG33H',
        nickname: 'king',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '32',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch4 (1).jpg',
        brand: 'Quartz',
        modelName: 'fancy watch',
        reference: 'quartz-3421fds',
        nickname: 'cool watch',
        dialColor: 'blue',
        caseMaterial: 'silver',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '30',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch4 (2).jpg',
        brand: 'Fossil',
        modelName: 'fossilWatchCool',
        reference: 'fossil-6423',
        nickname: 'hello world',
        dialColor: 'Brown',
        caseMaterial: 'gold',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '10',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch5.jpg',
        brand: 'Casio',
        modelName: 'nice watch',
        reference: 'casio-3453',
        nickname: 'sweet',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '8',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch.jpg',
        brand: 'Omega',
        modelName: 'SpeedMaster SunSwatch',
        reference: 'SO7KG33H',
        nickname: 'Sun',
        dialColor: 'Brown',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '6',
        priceTracking: '40',
    sellingPrice: "20",),
    watchCard(
        img: 'assets/images/watch2.jpg',
        brand: 'Rolex',
        modelName: 'Rolex-2421',
        reference: 'SO7KG33H',
        nickname: 'king',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '32',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch4 (1).jpg',
        brand: 'Quartz',
        modelName: 'fancy watch',
        reference: 'quartz-3421fds',
        nickname: 'cool watch',
        dialColor: 'blue',
        caseMaterial: 'silver',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '30',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch4 (2).jpg',
        brand: 'Fossil',
        modelName: 'fossilWatchCool',
        reference: 'fossil-6423',
        nickname: 'hello world',
        dialColor: 'Brown',
        caseMaterial: 'gold',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '10',sellingPrice: "20"),
    watchCard(
        img: 'assets/images/watch5.jpg',
        brand: 'Casio',
        modelName: 'nice watch',
        reference: 'casio-3453',
        nickname: 'sweet',
        dialColor: 'silver',
        caseMaterial: 'ceramic',
        braceletMaterial: 'Strap',
        soldMonth: '12',
        priceTracking: '8',sellingPrice: "20"),
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
          backgroundColor: PrimaryColor,
          titleSpacing: 0,
          toolbarHeight: 70,          centerTitle: true,
          elevation: 0,
          title:SizedBox(
            width: 35,
            height: 60,
            child: InkWell(
              onTap: () {},
              child: Transform.scale(
                scale: 3,
                child:
                Image.asset(
                  ImageAsset.LOGO,
                  alignment: Alignment(0.0,0.0),
                ),
              ),
            ),
          ),
          // TextField(
          //   controller: _textEditingController,
          //   autofocus: false,
          //   onChanged: (searchText) {},
          //   decoration: InputDecoration(
          //     contentPadding: EdgeInsets.all(10),
          //     enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.white),
          //         borderRadius: BorderRadius.circular(10)),
          //     focusedBorder: OutlineInputBorder(
          //         borderSide:
          //         BorderSide(color: Theme.of(context).primaryColor)),
          //     filled: true,
          //     fillColor: Color(0xFFF4F4F4),
          //     hintText: 'Jump to...',
          //     // suffixIcon: const ImageIcon(
          //     //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
          //     //   color: Color.fromRGBO(18, 108, 242, 1),
          //     // ),
          //     hintStyle: const TextStyle(
          //         color: Color(0xFF555555),
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         fontFamily: 'Rubik'),
          //   ),
          // ),
               actions:[
                 IconButton(onPressed:(){} ,icon: Icon(Icons.search),iconSize: 35,)
              // Center(
              //   child: SizedBox(
              //     width: 35,
              //       height: 40,
              //       child: InkWell(
              //         onTap: () {},
              //         child: Transform.scale(
              //             scale: 2.5,
              //             child:
              //               Image.asset(
              //                 ImageAsset.LOGO,
              //                 alignment: Alignment(0.0,0.0),
              //               ),
              //             ),
              //       ),
              //   ),
              // ),
            ],
          leading: MenuWidget()),
      body: SingleChildScrollView(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Trending Watches below 10,000\$',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.35,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(1.0),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 0.0,
                      //       offset: Offset(1.0, 1.0),
                      //     )
                      //   ],
                      // ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return BuildWatchCard(watches[index],index);
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
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Trending Watches Watches',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.35,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(1.0),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 0.0,
                      //       offset: Offset(1.0, 1.0),
                      //     )
                      //   ],
                      // ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return BuildWatchCard(watches[index],index);
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
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Most Trending Rose Gold Watches',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.35,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(1.0),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 0.0,
                      //       offset: Offset(1.0, 1.0),
                      //     )
                      //   ],
                      // ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return BuildWatchCard(watches[index],index);
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
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Most Trending Yellow Gold Watches',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.35,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(1.0),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 0.0,
                      //       offset: Offset(1.0, 1.0),
                      //     )
                      //   ],
                      // ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return BuildWatchCard(watches[index],index);
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
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Most Trending Yellow Platinum Watches',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.35,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(1.0),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 0.0,
                      //       offset: Offset(1.0, 1.0),
                      //     )
                      //   ],
                      // ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return BuildWatchCard(watches[index],index);
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
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Most Trending Yellow White Gold Watches',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.35,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(1.0),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 0.0,
                      //       offset: Offset(1.0, 1.0),
                      //     )
                      //   ],
                      // ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return BuildWatchCard(watches[index],index);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      IconButton(
            icon: Icon(Icons.person,size: 35,),
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
          );
}
