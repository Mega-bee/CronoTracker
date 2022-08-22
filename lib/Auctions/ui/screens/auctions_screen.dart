import 'package:flutter/material.dart';
import '../../../AuctionsWatchInfo/ui/screen/AuctionWatchInfo.dart';
import '../../../DrawerMenu/ui/widgets/drawer_menu_widget.dart';
import '../../../SearchFilter/ui/screens/filter_main_screen.dart';
import '../../../Trending/ui/screens/trending_screen.dart';
import '../../models/auctions_model.dart';
import '../widget/auctions_card.dart';

class Auctions extends StatefulWidget {
  @override
  State<Auctions> createState() => _AuctionsState();
}

class _AuctionsState extends State<Auctions> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.appBarPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (){},
          ),
        ],

        leading: MenuWidget(),
        title: Padding(
          padding: const EdgeInsets.only(right: 1, left: 3),
          child: TextFormField(
            style: TextStyle(fontSize: 15, color: Colors.black),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: (){
                  _key.currentState!.openEndDrawer();
                },
                icon: Icon(Icons.filter_alt,
                color: Colors.grey[400],
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal: 1),
              fillColor: Colors.white,
              hintText: '  Search for Auctions',
              filled: true,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            ),

          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 15,right: 11,top: 20,bottom: 10),
                        child:Text("2 July 2022",style: TextStyle(fontSize: 25,color: Color(0xFF707070)),)),
                    Container(
                      height: MediaQuery.of(context).size.height*0.8070,
                      child: ListView.builder(
                        shrinkWrap: false,
                        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                        itemCount: AuctionsList.length,
                        itemBuilder: (context, index) {
                          return AuctionsCard( auctionsModel: AuctionsList[index],);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerMenu(),
      endDrawer: FilterScreen(),
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
    // List <AuctionsModel> suggestions = AuctionsList.where((AuctionsList)).toList();
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
