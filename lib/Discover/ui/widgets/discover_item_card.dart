import 'package:cronotracker/Discover/models/discoverItem.dart';
import 'package:cronotracker/Discover/ui/screens/Filter1.dart';
import 'package:flutter/material.dart';
class DiscoverItemCard extends StatelessWidget {
  
  DiscoverItem di;


  DiscoverItemCard(this.di);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Filter1Screen(discoverItem: di)),
          );
        },
        child: ListTile(
          title: Text(di.label.toString(),style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
          leading: Image.asset(
        '${di.image}',fit: BoxFit.fill),
          subtitle: Text("Brand"),
        ),
        // child:Column(
        //     children: [
        // SizedBox(
        // width: MediaQuery.of(context).size.width*0.45,
        // height: MediaQuery.of(context).size.height*0.15,
        // child: Image.asset(
        //     '${di.image}',fit: BoxFit.fill,
        // ),),
        //       SizedBox(
        //         width: 20,
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: Text(
        //           '${di.label}',
        //           style: TextStyle(
        //             fontSize: 16,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
      ),
    );
  }
}
