import 'package:cronotracker/Notfications/Model/NotficationModel.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notificationModel;
  NotificationCard({required this.notificationModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 9, top: 20, right: 9, bottom: 11),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.2155,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationModel.date.toString(),
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A3A3A)),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 29,15 , 29),
                  child:   RichText(
                    text: TextSpan(
                        text:  "●    ",
                        style: TextStyle(color: BlueColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: "${notificationModel.text.toString()}",
                            style: TextStyle(
                                color: Color(0xFF747474),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ]
                    ),
                  ),),
                elevation: 3,
              )
            ],
          ),
        ));
  }
}
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.0,
      width: 13.0,
      decoration: const BoxDecoration(
        color: Color(0xFF3A3A3A),
        shape: BoxShape.circle,
      ),
    );
  }
}