import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDeleteDialog extends StatelessWidget {
  final String title;
  final String content;
  final Function yesBtn;
  final Function noBtn;
  const CustomDeleteDialog({
    required this.title,
    required this.content,
    required this.yesBtn,
    required this.noBtn,
  });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        // title: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       child: Text(
        //         title,
        //         style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //   ],
        // ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                content,textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    noBtn();
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14)     ,               ),
                  // style: ElevatedButton.styleFrom(
                  //     primary: BlueColor,
                  //
                  //     elevation: 0,
                  //     side: BorderSide(color: Theme.of(context).Colors.black),
                  //     padding: const EdgeInsets.fromLTRB(30, 10, 30, 10)),
                ),
                TextButton(
                  onPressed: () {
                    yesBtn();
                  },
                  child: Text("  OK  ",
                      style: TextStyle(
                          color: BlueColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14)
                  ),
                  // style: ElevatedButton.styleFrom(
                  //     primary: BlueColor,
                  //     elevation: 0,
                  //     side: BorderSide(color: Colors.black),
                  //     padding: const EdgeInsets.fromLTRB(30, 10, 30, 10)),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ],
        ));
  }
}