

import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../AlertMessage/ui/widget/alert_message_card.dart';

String _values= 'Warranty';
String _valuess= 'Unworn';

class BottomSheett extends StatefulWidget {
  const BottomSheett({Key? key}) : super(key: key);

  @override
  State<BottomSheett> createState() => _BottomSheettState();
}

class _BottomSheettState extends State<BottomSheett> {
  bool value = false;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0))),
        height: MediaQuery
            .of(context)
            .size
            .height * 0.365,

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.05,
            child: Text("Add to Collection",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.8,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.06,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                  labelText: 'Price',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter Price',
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderSide:
                    BorderSide(style: BorderStyle.solid, width: 3),
                  )),
            ),
          ),
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.02,
          ),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.8,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.06,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                  labelText: 'Year',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter Year',
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderSide:
                    BorderSide(style: BorderStyle.solid, width: 3),
                  )),
            ),
          ),
              SizedBox(height: 5,),
          // SizedBox(
          //   height: MediaQuery
          //       .of(context)
          //       .size
          //       .height * 0.02,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text('Full Set: '),
              // SizedBox(
              //   width: MediaQuery
              //       .of(context)
              //       .size
              //       .width * 0.1,
              // ), //Spacer(),// Text("No"),
              // Checkbox(
              //     activeColor: Colors.blue[900],
              //     value: value2,
              //     onChanged: (value) {
              //       setState(() {
              //         this.value2 = value!;
              //       });
              //     }),
              // Text("Yes"),
             /* Checkbox(
                  activeColor: Colors.blue[900],
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  }),*/
              Text('Warranty \n Card:', style: TextStyle(fontSize: 13),),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.01,
              ),
              Radio(
                  value: "Warranty",
                  groupValue: _values,
                  onChanged: (value){ setState(() {
                      _values =value.toString();
                  });}),

              Text('Without Warranty \n Card:', style: TextStyle(fontSize: 13),),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.01,
              ),
              Radio(
                  value:"Without Warranty",
                  groupValue: _values,
                  onChanged: (value){ setState(() {
                    _values =value.toString();
                  });})
            ],
          ), SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Unworn', style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.01,
                      ),
                      Radio(
                          value: "Unworn",
                          groupValue: _valuess,
                          onChanged: (value){ setState(() {
                            _valuess =value.toString();
                          });}),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Pre-owned', style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.01,
                      ),
                      Radio(
                          value: "Pre-owned",
                          groupValue: _valuess,
                          onChanged: (value){ setState(() {
                            _valuess =value.toString();
                          });}),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Pre-owned like new', style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.01,
                      ),
                      Radio(
                          value: "Pre-owned like new",
                          groupValue: _valuess,
                          onChanged: (value){ setState(() {
                            _valuess =value.toString();
                          });}),
                    ],
                  ),
                ],
              )

          /*SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.8,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.1,
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                  labelText: 'Condition',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Describe Condition',
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderSide:
                    BorderSide(style: BorderStyle.solid, width: 3),
                  )),
            ),
          ),*/
        ]),
      ),
    );
  }
  }