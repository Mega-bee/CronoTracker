import 'package:cronotracker/Notfications/ui/Widgets/NotificationCard.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../Model/NotficationModel.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
                  ZoomDrawer.of(context)!.toggle();
            },
          ),
        ),
        actions: [
          Icon(Icons.search)
        ],
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
