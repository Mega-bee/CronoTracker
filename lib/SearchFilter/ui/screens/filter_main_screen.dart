import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/main_filter_screen_model.dart';
import '../widget/main_filter_screen_card.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return MainFilterCard(cards[index]);
        },
        itemCount: cards.length,
        shrinkWrap: true,
      ),
    );
  }
}
