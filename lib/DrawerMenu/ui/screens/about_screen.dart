import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../BottomNavigationBar/ui/screens/bottom_navigation_bar_screen.dart';

class AboutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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
                  'lib/assets/images/logo.jpg',
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
                  Navigator.push(
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
                color: Colors.appBarPurple,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
