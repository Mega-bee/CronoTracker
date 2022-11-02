import 'package:cronotracker/Notfications/ui/Widgets/NotificationCard.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import '../../../SearchPage/ui/Screen/SearchPage.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../Model/NotficationModel.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
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
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
                child: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize:24 ),)),
          ),
          ListView.builder(
          itemCount: notificationList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
        return NotificationCard(notificationModel: notificationList[index]);
          },
        )],
      ),
    );
  }
}
