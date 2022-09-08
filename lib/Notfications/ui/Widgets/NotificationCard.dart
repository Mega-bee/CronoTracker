import 'package:cronotracker/Notfications/Model/NotficationModel.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notificationModel;

  const NotificationCard({required this.notificationModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                notificationModel.text.toString(),
                style: TextStyle(
                    color: Color(0xFF747474),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  notificationModel.date.toString(),
                  style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF3A3A3A)),
                ),
              ),
            ],
          ),
        ),
        elevation: 1,
      ),
    );
  }
}
