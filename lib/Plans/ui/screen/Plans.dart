import 'package:cronotracker/Plans/model/PlansModel.dart';
import 'package:cronotracker/Plans/ui/widget/PlansWidget.dart';
import 'package:flutter/material.dart';

import '../../../DrawerMenu/ui/screen/zoom_drawer_screen.dart';
import '../../../NavigationBar/ui/Screen/navbar.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';
class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
          backgroundColor: PrimaryColor,
          titleSpacing: 0,
          toolbarHeight: 70,
          centerTitle: true,
          elevation: 0,
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
                width: 35,
                height: 60,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ZoomDrawerr()),
                    );
                  },
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
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Plans",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize:24 ),)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListView.builder(
                itemCount: plans.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return PlansWidget(plansModel: plans[index]);
                },
              ),
            )
          ],
        ),
      ),
    );;
  }
}
