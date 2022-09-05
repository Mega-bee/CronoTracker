import 'package:cronotracker/Trending/model_classes/watch_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../AlertMessage/ui/widget/alert_message_card.dart';
import '../../../NavigationBar/ui/Screen/navbar.dart';
import '../../../Trending/Model/trending_model.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';

class WatchDetailsScreen extends StatelessWidget {
  final watchCard? trendingModel;

  // WatchDetails? watchDetails;
  const WatchDetailsScreen({Key? key, required this.trendingModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        elevation: 0,
        title: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: TextField(
              controller: _textEditingController,
              autofocus: false,
              onChanged: (searchText) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Theme.of(context).primaryColor)),
                filled: true,
                fillColor: Color(0xFFF4F4F4),
                hintText: 'Jump to...',
                // suffixIcon: const ImageIcon(
                //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
                //   color: Color.fromRGBO(18, 108, 242, 1),
                // ),
                hintStyle: const TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              ImageAsset.LOGO,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
        ],
      ),      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: Image(
                image: AssetImage(trendingModel!.img.toString()),
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Brand',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Omega'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Model Name',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Speedmaster MoonSwatch'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Reference',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('SO33M100'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Nickname',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Moon'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Dial Color',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Black Dial'),
                Spacer(),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Case Material',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Spacer(),
                Text('Bioceramic'),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content: 'Would you like to add the watch to you favorites ?',
                      yesBtn: (){
                        Navigator.pop(context);
                      },
                      noBtn: (){
                        Navigator.pop(context);
                      },
                    );
                  }
              );
            },
            child: Icon(Icons.credit_card,color: BlueColor,),
            backgroundColor: PrimaryColor,
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDeleteDialog(
                      title: 'Confirm',
                      content:
                          'Would you like to add the watch to you favorites ?',
                      yesBtn: () {
                        Navigator.pop(context);
                      },
                      noBtn: () {
                        Navigator.pop(context);
                      },
                    );
                  });
            },
            child: Icon(Icons.favorite,color: BlueColor,),
            backgroundColor: PrimaryColor,
          ),
        ],
      ),
    );
  }
}
