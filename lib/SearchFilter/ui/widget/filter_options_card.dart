import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/main_filter_screen_model.dart';
import '../screens/filter_main_screen.dart';

class FilterOptionsCard extends StatefulWidget {
  mainFilterScreenModel? mf;

  @override
  State<FilterOptionsCard> createState() => _FilterOptionsCardState();
}

class _FilterOptionsCardState extends State<FilterOptionsCard> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    mainFilterScreenModel? mf;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text('${widget.mf?.filterName}', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: IconButton(icon: Icon(Icons.arrow_back)
                  , onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FilterScreen()),
                      );
                    }

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 18
                ),
              ),
              ),
            ),
            ListTile(
              title: Text('Green Diamond Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Yellow Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Candy Pink Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Silver Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Wimbeldon Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Black Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('White Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Chocolate Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Purple Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Rhodium Diamond Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Black MOP Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Blue Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Silver Diamond Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            ListTile(
              title: Text('Blue Roman Dial'),
              leading: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}
