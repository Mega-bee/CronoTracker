import 'package:flutter/material.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';
import '../../Model/auctions_model.dart';
import '../Widget/auctions_card.dart';

class Auctions extends StatefulWidget {
  const Auctions({Key? key}) : super(key: key);

  @override
  State<Auctions> createState() => _AuctionsState();
}

class _AuctionsState extends State<Auctions> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
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

        body:Container(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: 10),
        child:
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8070,
              child: ListView.builder(
                shrinkWrap: false,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: AuctionsList.length,
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Padding(
                  padding: const EdgeInsets.only(
                      left: 11, right: 11, top: 13, bottom: 10),
                  child: Text(
                  "2 July 2022",
                  style: TextStyle(fontSize: 25, color: Color(0xFF707070)),
                  )),
                  AuctionsCard(
                      auctionsModel: AuctionsList[index], index: index)]);
                },
              ),
            ),
      )),
    ));
  }
}
