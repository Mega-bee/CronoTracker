import 'package:flutter/material.dart';
import '../../model/filter_model.dart';
import '../screens/selected_filter_screen.dart';

class MainFilterCard extends StatelessWidget {

  final FilterModel mf;

  MainFilterCard(this.mf);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      key: _key,
      children: [

        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectedFilterScreen(key: _key, filter: mf)
              ),
            );
          },
          child: ListTile(
            title: Text('${mf.filterName}'),
            trailing: Icon((Icons.arrow_forward_ios_outlined)),
          ),
        ),
      ],
    );
  }
}
