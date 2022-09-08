import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import '../../model/filter_model.dart';

class SelectedFilterScreen extends StatefulWidget {
  final FilterModel filter;
  const SelectedFilterScreen({required Key key, required this.filter}) : super(key: key);


  @override
  State<SelectedFilterScreen> createState() => _SelectedFilterScreenState();
}

class _SelectedFilterScreenState extends State<SelectedFilterScreen> {
  

  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3= false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;
  bool isChecked9 = false;
  bool isChecked10 = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListTile(
                    leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                      Navigator.pop(context);
                    },
                    ),
                    title: Text(
                      '${widget.filter.filterName}'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      hintText: 'Search'
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),


                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),

                    Text('option-1')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked2,
                      onChanged: (value) {
                        setState(() {
                          isChecked2 = value!;
                        });
                      },
                    ),

                    Text('option-2')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked3,
                      onChanged: (value) {
                        setState(() {
                          isChecked3 = value!;
                        });
                      },
                    ),

                    Text('option-3')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked4,
                      onChanged: (value) {
                        setState(() {
                          isChecked4 = value!;
                        });
                      },
                    ),

                    Text('option-4')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked6,
                      onChanged: (value) {
                        setState(() {
                          isChecked6 = value!;
                        });
                      },
                    ),

                    Text('option-5')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked7,
                      onChanged: (value) {
                        setState(() {
                          isChecked7 = value!;
                        });
                      },
                    ),

                    Text('option-7')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked5,
                      onChanged: (value) {
                        setState(() {
                          isChecked5 = value!;
                        });
                      },
                    ),

                    Text('option-8')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked8,
                      onChanged: (value) {
                        setState(() {
                          isChecked8 = value!;
                        });
                      },
                    ),

                    Text('option-8')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked7,
                      onChanged: (value) {
                        setState(() {
                          isChecked7 = value!;
                        });
                      },
                    ),

                    Text('option-7')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked5,
                      onChanged: (value) {
                        setState(() {
                          isChecked5 = value!;
                        });
                      },
                    ),

                    Text('option-8')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked8,
                      onChanged: (value) {
                        setState(() {
                          isChecked8 = value!;
                        });
                      },
                    ),

                    Text('option-8')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked5,
                      onChanged: (value) {
                        setState(() {
                          isChecked5 = value!;
                        });
                      },
                    ),

                    Text('option-8')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked8,
                      onChanged: (value) {
                        setState(() {
                          isChecked8 = value!;
                        });
                      },
                    ),

                    Text('option-8')
                  ],
                ),
              ],


            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              TextButton(
                child: Text('CLEAR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: PrimaryColor
                  ),
                ),
                onPressed: (){},
              ),
              Spacer(),
              TextButton(
                child: Text('DONE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color:PrimaryColor
                  ),),
                onPressed: (){},
              ),
              Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}


