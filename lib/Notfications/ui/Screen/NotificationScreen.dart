import 'package:flutter/material.dart';

import '../../Model/NotficationModel.dart';
import '../Widgets/NotificationCard.dart';
class NotificationScreen extends StatefulWidget {
const NotificationScreen({Key? key}) : super(key: key);

@override
State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(

          child: ListView.builder(
            itemCount: notificationList.length,
            itemBuilder: (context, index) {
              return NotificationCard(notificationModel: notificationList[index]);
            },
          )
    );
  }
}