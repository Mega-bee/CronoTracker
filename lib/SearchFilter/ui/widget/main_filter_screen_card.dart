import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/main_filter_screen_model.dart';
import 'filter_options_card.dart';

class MainFilterCard extends StatelessWidget {

  mainFilterScreenModel? mf;

  MainFilterCard(this.mf);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilterOptionsCard()),
            );
          },
          child: ListTile(
            title: Text('${mf?.filterName}'),
            trailing: Icon((Icons.arrow_forward_ios_outlined)),
          ),
        ),
      ],
    );
  }
}
