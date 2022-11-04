import 'package:flutter/material.dart';
import '../../../SearchPage/ui/Screen/SearchPage.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';
import '../../Model/auctions_model.dart';
import '../Widget/auctions_card.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class Auctions extends StatefulWidget {
  const Auctions({Key? key}) : super(key: key);

  @override
  State<Auctions> createState() => _AuctionsState();
}

class _AuctionsState extends State<Auctions> {
  List<AuctionsModel> aucts = List.from(AuctionsList);
  List<DropdownMenuItem> dropValues = [
    DropdownMenuItem(
      child: Text(
        'Brand',
        style: TextStyle(fontSize: 15),
      ),
      value: "Brands",
    ),
    DropdownMenuItem(
      child: Text('Year'),
      value: "Year",
    ),
    DropdownMenuItem(
      child: Text('Model'),
      value: "Model",
    ),
    DropdownMenuItem(
      child: Text('Sold'),
      value: "Sold",
    ),
  ];
  String selected1 = 'Sold';
  String selected2 = "Brands";
  String selected3 = "Year";
  String selected4 = "Model";
  String selected5 = "Reference";
  final List references = ['Reference'];
  final List models = ['Model', 'OverSeas'];
  final List sold = ['Sold', 'Not Sold'];
  final List brands = ['Brands', 'Vacheron ', 'Rolex'];

  final List years = [
    'Year',
    '2021',
    '2022',
  ];
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          leadingWidth: 90,

          leading: Row(
            children: [
              MenuWidget(),
              Spacer(),
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
          toolbarHeight: 100,
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


          bottom: PreferredSize(
            //  width: MediaQuery.of(context).size.width * 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.26,
                    child: DropdownButton(
                      items: brands
                          .map((e) => DropdownMenuItem(
                        child: Container(
                            child: Text(
                              e,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 10),
                            )),
                        value: e,
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selected2 = value as String;
                        });
                      },
                      underline: Container(color: Colors.transparent),
                      value: selected2,
                    ),
                  ),
                  DropdownButton<dynamic>(
                      items: sold
                          .map((e) => DropdownMenuItem(
                        child: Text(
                          e,
                          style: TextStyle(fontSize: 12),
                        ),
                        value: e,
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selected1 = value as String;
                        });
                      },
                      underline: Container(color: Colors.transparent),
                      value: selected1),
                  DropdownButton(
                    items: models
                        .map((e) => DropdownMenuItem(
                      child: Text(
                        e,
                        style: TextStyle(fontSize: 10),
                      ),
                      value: e,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selected4 = value as String;
                      });
                    },
                    underline: Container(color: Colors.transparent),
                    value: selected4,
                  ),
                  DropdownButton(
                    items: years
                        .map((e) => DropdownMenuItem(
                      child: Text(
                        e,
                        style: TextStyle(fontSize: 10),
                      ),
                      value: e,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selected3 = value as String;
                        aucts.where(
                                (element) => element.year as String == selected3);
                      });
                    },
                    underline: Container(color: Colors.transparent),
                    value: selected3,
                  ),
                  DropdownButton(
                    items: references
                        .map((e) => DropdownMenuItem(
                      child: Text(
                        e,
                        style: TextStyle(fontSize: 10),
                      ),
                      value: e,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selected5 = value as String;
                      });
                    },
                    underline: Container(color: Colors.transparent),
                    value: selected5,
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(10),
          ),
        ),
        body:
        // Padding(
        //   padding: EdgeInsets.only(top: 10),
        //   child: Column(
        // children: [
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 1,
        //   child: SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       children: [
        //         SizedBox(
        //           width: MediaQuery.of(context).size.width * 0.26,
        //           child: DropdownButton(
        //             items: brands
        //                 .map((e) => DropdownMenuItem(
        //                       child: Container(
        //                           child: Text(
        //                         e,
        //                         overflow: TextOverflow.ellipsis,
        //                         style: TextStyle(fontSize: 10),
        //                       )),
        //                       value: e,
        //                     ))
        //                 .toList(),
        //             onChanged: (value) {
        //               setState(() {
        //                 selected2 = value as String;
        //               });
        //             },
        //             underline: Container(color: Colors.transparent),
        //             value: selected2,
        //           ),
        //         ),
        //         DropdownButton<dynamic>(
        //             items: sold
        //                 .map((e) => DropdownMenuItem(
        //                       child: Text(
        //                         e,
        //                         style: TextStyle(fontSize: 12),
        //                       ),
        //                       value: e,
        //                     ))
        //                 .toList(),
        //             onChanged: (value) {
        //               setState(() {
        //                 selected1 = value as String;
        //               });
        //             },
        //             underline: Container(color: Colors.transparent),
        //             value: selected1),
        //         DropdownButton(
        //           items: models
        //               .map((e) => DropdownMenuItem(
        //                     child: Text(
        //                       e,
        //                       style: TextStyle(fontSize: 10),
        //                     ),
        //                     value: e,
        //                   ))
        //               .toList(),
        //           onChanged: (value) {
        //             setState(() {
        //               selected4 = value as String;
        //             });
        //           },
        //           underline: Container(color: Colors.transparent),
        //           value: selected4,
        //         ),
        //         DropdownButton(
        //           items: years
        //               .map((e) => DropdownMenuItem(
        //                     child: Text(
        //                       e,
        //                       style: TextStyle(fontSize: 10),
        //                     ),
        //                     value: e,
        //                   ))
        //               .toList(),
        //           onChanged: (value) {
        //             setState(() {
        //               selected3 = value as String;
        //               aucts.where((element) =>
        //                   element.year as String == selected3);
        //             });
        //           },
        //           underline: Container(color: Colors.transparent),
        //           value: selected3,
        //         ),
        //         DropdownButton(
        //           items: references
        //               .map((e) => DropdownMenuItem(
        //                     child: Text(
        //                       e,
        //                       style: TextStyle(fontSize: 10),
        //                     ),
        //                     value: e,
        //                   ))
        //               .toList(),
        //           onChanged: (value) {
        //             setState(() {
        //               selected5 = value as String;
        //             });
        //           },
        //           underline: Container(color: Colors.transparent),
        //           value: selected5,
        //         ),
        //       ],
        //     ),
        //     ),
        //   ),
        GroupedListView<dynamic, String>(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          elements: AuctionsList,
          groupBy: (element) => element.date,
          groupSeparatorBuilder: (value) => Container(
            color: PrimaryColor,
            child: Padding(

              padding: const EdgeInsets.only(left: 13, right: 10),
              child: Text(value,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
          ),
          groupComparator: ((value1, value2) => value1.compareTo(value2)),
          indexedItemBuilder: (context, element, index) => AuctionsCard(
            auctionsModel: AuctionsList[index],
            index: index,
            //       );
          ),
          useStickyGroupSeparators: true,
          reverse: true,
        )
      // SizedBox(
      //   height: MediaQuery.of(context).size.height * 0.8070,
      //   child: ListView.builder(
      //     shrinkWrap: false,
      //     physics: BouncingScrollPhysics(
      //         parent: AlwaysScrollableScrollPhysics()),
      //     itemCount: aucts.length,
      //     itemBuilder: (context, index) {
      //       return AuctionsCard(
      //         auctionsModel: AuctionsList[index],
      //         index: index,
      //       );
      //     },
      //   ),
      // ),
      // ],
      //   ),
      // )
    );
  }
}