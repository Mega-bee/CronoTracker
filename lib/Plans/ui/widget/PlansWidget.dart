import 'package:cronotracker/Plans/model/PlansModel.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

class PlansWidget extends StatelessWidget {
  PlansModel plansModel;

  PlansWidget({Key? key, required this.plansModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(40)),
          height: MediaQuery.of(context).size.height * 0.25,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    plansModel.name.toString(),
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 0, right: 8.0, top: 10, left: 30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: ("${plansModel.Price.toString()}\$"),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        ),
                        TextSpan(
                          text: " / Month",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ]),
                    )

                    // Text(
                    //   ("${plansModel.Price.toString()}\$/Month"),
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 30),
                    // ),
                    ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              plansModel.Description1.toString(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            Text(
                              plansModel.Description2.toString(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            Text(
                              plansModel.Description3.toString(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            child: plansModel.isSelected
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Buy",
                                    style: TextStyle(color: Colors.white),
                                  ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0.5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                primary: BlueColor),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
