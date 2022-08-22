import 'package:cronotracker/DrawerMenu2/ui/screen/zoom_drawer_screen.dart';
import 'package:cronotracker/Trending/ui/Screen/trending_screen.dart';
import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AboutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:  PrimaryColor,
          elevation: 0,
          title: SafeArea(child: ColoredBox(color: PrimaryColor),),
          leading: MenuWidget(),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Spacer(),

        Image(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          image: AssetImage(
            'assets/logo.png',
          ),
        ),

              Text(
                'Meta Auction-Platinum',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
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
                      MaterialPageRoute(builder: (context) => ZoomDrawerr()),
                    );
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  color:PrimaryColor,
                ),
              ),





      ],
    ),
      ),
    );

  }
}


