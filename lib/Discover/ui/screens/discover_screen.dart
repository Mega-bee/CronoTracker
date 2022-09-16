import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../models/discoverItem.dart';
import '../widgets/discover_item_card.dart';

class DiscoverScreen extends StatelessWidget {

  DiscoverItem? discoveritem;

  List<DiscoverItem> brands = [

    DiscoverItem(
        image: ImageAsset.ROLEX,
      label: 'Rolex'
    ),
    DiscoverItem(
        image: ImageAsset.AUDEMARSPIGUET,
        label: 'Audemars Piguet'
    ),

    DiscoverItem(
        image: ImageAsset.PATEKPHILIPE,
        label: 'Patek Philippe'
    ),
    DiscoverItem(
        image: ImageAsset.RECHARD,
        label: 'Richard Mille'
    ),


    DiscoverItem(
        image: ImageAsset.GIRARD,
        label: 'Girard-Parregaux'
    ),
    DiscoverItem(
        image: ImageAsset.OTHERBRAND,
        label: 'Other Brands'
    ),


  ];
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
          backgroundColor: PrimaryColor,
          titleSpacing: 0,
          toolbarHeight: 70,            centerTitle: true,
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
           Padding(
                   padding: const EdgeInsets.only(right: 6.0),
                   child: SizedBox(
                     height: MediaQuery.of(context).size.height*0.1,
                     width: MediaQuery.of(context).size.width*0.1,
                       child: IconButton(onPressed:(){} ,icon:Image.asset(ImageAsset.SEARCH,fit: BoxFit.cover,))),
                 ) 
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
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: PrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Discover',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  ),
                height: 40,
              ),
              Column(
                children: [
                  SizedBox(height: 20,),
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: brands.length,
                      itemBuilder: (BuildContext context, int index) {
                        return DiscoverItemCard(brands[index]);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
