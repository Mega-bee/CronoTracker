import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../NavigationBar/ui/Screen/navbar.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';

class AboutScreen extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                width: 200,
                height: 200,
                image: AssetImage(
                    ImageAsset.LOGO
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Meta Auction-Platinum',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            Spacer(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8)),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigationBarScreen()),
                  );
                },
                child: Text(
                  "OK",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                color: PrimaryColor,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
