import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';

class AssistantScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
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
          actions:<Widget>[
            Transform.scale(
                scale: 2.5,
                child:IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    ImageAsset.LOGO,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                )),
          ],
          leading: MenuWidget(),
        ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'What are you looking for ?',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),

              Image(
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 500,
                image: AssetImage(ImageAsset.WATCH1),
              ),

            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBarScreen(),
    );
  }
}
