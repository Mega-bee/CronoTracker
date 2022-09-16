import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:cronotracker/Discover/ui/widgets/discover_item_filter_3.dart';
import 'package:flutter/material.dart';

import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';
class BrandScreen3 extends StatelessWidget {
  const BrandScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        titleSpacing: 0,
        toolbarHeight: 100,
        centerTitle: true,
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
        ],),
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Black Dial",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height: 10,),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return DiscoverFilterWidget3(
                    auctionsModel: AuctionsList[index], index: index,
                  );
                }),
          ],
        )
    )));
  }
}
