import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/material.dart';
import '../../model/filter_model.dart';
import '../widget/main_filter_screen_card.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return MainFilterCard(cards[index]);
              },
              itemCount: cards.length,
              shrinkWrap: true,
            ),

            Padding(
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
                        color: PrimaryColor
                      ),),
                      onPressed: (){},
                    ),
                    Spacer(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
