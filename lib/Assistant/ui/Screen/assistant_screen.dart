import 'package:flutter/material.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../../utils/style/colors.dart';

class AssistantScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
          backgroundColor: PrimaryColor,
          titleSpacing: 0,
          toolbarHeight: 70,          centerTitle: true,
          elevation: 0,
          title:SizedBox(
            width: 35,
            height: 60,
            child: InkWell(
              onTap: () {},
              child: Transform.scale(
                scale: 3,
                child:
                Image.asset(
                  ImageAsset.LOGO,
                  alignment: Alignment(0.0,0.0),
                ),
              ),
            ),
          ),
          // TextField(
          //   controller: _textEditingController,
          //   autofocus: false,
          //   onChanged: (searchText) {},
          //   decoration: InputDecoration(
          //     contentPadding: EdgeInsets.all(10),
          //     enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.white),
          //         borderRadius: BorderRadius.circular(10)),
          //     focusedBorder: OutlineInputBorder(
          //         borderSide:
          //         BorderSide(color: Theme.of(context).primaryColor)),
          //     filled: true,
          //     fillColor: Color(0xFFF4F4F4),
          //     hintText: 'Jump to...',
          //     // suffixIcon: const ImageIcon(
          //     //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
          //     //   color: Color.fromRGBO(18, 108, 242, 1),
          //     // ),
          //     hintStyle: const TextStyle(
          //         color: Color(0xFF555555),
          //         fontSize: 16,
          //         fontWeight: FontWeight.w400,
          //         fontFamily: 'Rubik'),
          //   ),
          // ),
               actions:[
                Padding(
                   padding: const EdgeInsets.only(right: 6.0),
                   child: SizedBox(
                     height: MediaQuery.of(context).size.height*0.1,
                     width: MediaQuery.of(context).size.width*0.1,
                       child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
                      },
                      icon: Image.asset(
                        ImageAsset.SEARCH,
                        fit: BoxFit.cover,
                      )))
                 ) 
              // Center(
              //   child: SizedBox(
              //     width: 35,
              //       height: 40,
              //       child: InkWell(
              //         onTap: () {},
              //         child: Transform.scale(
              //             scale: 2.5,
              //             child:
              //               Image.asset(
              //                 ImageAsset.LOGO,
              //                 alignment: Alignment(0.0,0.0),
              //               ),
              //             ),
              //       ),
              //   ),
              // ),
            ],
          leading: MenuWidget()),
      body: SizedBox(
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
