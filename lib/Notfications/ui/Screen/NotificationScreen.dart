import 'package:cronotracker/Notfications/ui/Widgets/NotificationCard.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../Model/NotficationModel.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        elevation: 0,
        title: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: TextField(
              controller: _textEditingController,
              autofocus: false,
              onChanged: (searchText) {},
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
            ),
          ),
        ),
        actions:<Widget>[
          Transform.scale(
              scale: 2.5,
              child:IconButton(
                onPressed: () {},
                icon: Image.asset(
                  ImageAsset.LOGO,
                  height: double.infinity,
                  width: double.infinity,
                ),
              )),
        ],
        leading: MenuWidget(),
      ),
      body: Container(

          child: ListView.builder(
        itemCount: notificationList.length,
        shrinkWrap: false,
        itemBuilder: (context, index) {
          return NotificationCard(notificationModel: notificationList[index]);
        },
      )),
    );
  }
}
