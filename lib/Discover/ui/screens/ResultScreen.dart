import 'package:cronotracker/Auctions/Model/auctions_model.dart';
import 'package:cronotracker/Discover/ui/widgets/ResultCard.dart';
import 'package:flutter/material.dart';

import 'package:grouped_list/grouped_list.dart';
import '../../../SearchPage/ui/Screen/SearchPage.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import '../widgets/discover_item_card.dart';
import 'discover_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 90,

          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),                Spacer(),
              SizedBox(
                width: 30,
                height: 60,
                child: InkWell(
                  onTap: () {},
                  child: Transform.scale(
                    scale: 3,
                    child: Image.asset(
                      ImageAsset.LOGO,
                      alignment: Alignment(0.0, 0.0),
                    ),
                  ),
                ),
              ),
            ],
          ),

          backgroundColor: PrimaryColor,
          titleSpacing: 0,
          toolbarHeight: 70,
          centerTitle: true,
          elevation: 0,
          title:   Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
            child:
            TextFormField(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));},
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
                // suffixIcon: const ImageIcon(
                //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
                //   color: Color.fromRGBO(18, 108, 242, 1),
                // ),
                // hintText: widget.hintText,
                // hintStyle: style,
                prefixIcon: IconButton(
                    icon: Icon(Icons.search,color: Colors.black,),
                    onPressed: () {}
                ),
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
              //   suffixIcon: widget.text.isNotEmpty
              //       ? GestureDetector(
              //     child: Icon(Icons.close, color: Colors.black),
              //     onTap: () {
              //       // controller.clear();
              //       // widget.onChanged('');
              //       FocusScope.of(context).requestFocus(FocusNode());
              //     },
              //   )
              //       : null,
              // ),
              // cursorColor: Colors.purple,
              // style: style,
              // onChanged:widget.onChanged,
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

        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: GroupedListView<dynamic,String>(
                    useStickyGroupSeparators: true,
                    shrinkWrap: true,
                    elements: AuctionsList,
                    groupBy: (element) => element.dialColor,
                    groupSeparatorBuilder: (value) => Container(
                      child: Text(value, style:TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),),

                    ),
                    order: GroupedListOrder.ASC,
                    // groupComparator: ((value1, value2) => value1.compareTo(value2)),
                    indexedItemBuilder: (context, element, index) =>ResultCard(
                      auctionsModel: AuctionsList[index], index: index,
                    ),
                    reverse:true
                ))));
  }
}