import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';

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
    return  SingleChildScrollView(
      child: Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0))),
            height: MediaQuery.of(context).size.height * 0.5,
            
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
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
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Full Set: '),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Text("No"),
                    Checkbox(
                        activeColor: Colors.blue[900],
                        value: value2,
                        onChanged: (value) {
                          setState(() {
                            this.value2 = value!;
                          });
                        }),
                    Text("Yes"),
                    Checkbox(
                        activeColor: Colors.blue[900],
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        })
                  ],
                ),SizedBox(height: 5,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
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
                ),
              ]),
            ),
    );
    
  }
}
