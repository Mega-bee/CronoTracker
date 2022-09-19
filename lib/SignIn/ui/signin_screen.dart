import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../DrawerMenu/ui/screen/zoom_drawer_screen.dart';
import '../../NavigationBar/ui/Screen/navbar.dart';
import '../../SignUp/ui/screens/signup_step1.dart';
import '../../Trending/ui/Screen/trending_screen.dart';
import '../../utils/Images/Images.dart';
import '../../utils/style/colors.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
  bool _isVisible = false;
  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: PrimaryColor,
          titleSpacing: 0,
          toolbarHeight: 70,
          centerTitle: true,
          elevation: 0,
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
                width: 35,
                height: 60,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ZoomDrawerr()),
                    );
                  },
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Text(
                  'We are happy to see you here again ! \nEnter your email and password now',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 15),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Email Address',
                      style: TextStyle(
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                        btnActive = value.length == 1 ? true : false;
                      });
                    },
                    decoration: const InputDecoration(
                    icon: const Icon(Icons.email_outlined, color: Colors.black,),
                    hintText: 'Email address',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 15, top: 30),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    obscureText: !_isVisible,
                    controller: passController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon:_isVisible ? Icon(Icons.visibility_outlined, color: Colors.grey) : Icon(Icons.visibility_off_outlined, color: Colors.grey),
                      ),
                      icon: const Icon(Icons.lock_outline_rounded, color: Colors.black,),
                      hintText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Container(
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                        print(emailController.text);
                        } else {
                        };},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: BlueColor,
                      child: Center(
                        child: Row(
                          children: [
                            Spacer(),
                            Text(
                              "Continue",
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Icon(
                              Icons.subdirectory_arrow_left,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.050,
                // ),
                // Text(
                //   'Or',
                //   style: TextStyle(
                //     color: Colors.grey,
                //     fontSize: 12
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.001,
                // ),
                //
                // Padding(
                //   padding: const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 20),
                //   child: Container(
                //     height: 50,
                //     child: MaterialButton(
                //       elevation: 0,
                //       onPressed: () {},
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       color: Colors.grey[100],
                //       child: Center(
                //         child: Row(
                //           children: [
                //             Spacer(),
                //             Padding(
                //               padding: const EdgeInsets.only(right: 1),
                //               child: Image(image: AssetImage(ImageAsset.GOOGLE),
                //               width: 50,
                //                 height: 20,
                //               ),
                //             ),
                //             Text(
                //               "Continue with Google",
                //               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                //             ),
                //             Spacer(),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account yet?'
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpStep1()),
                        );
                      },
                      Widget: Text('Sign Up', style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline,),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),

                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Spacer(),
                //     Text(
                //       'Stay organized with ',
                //       style: TextStyle(
                //         fontWeight: FontWeight.w300,
                //       ),
                //     ),
                //     Image(
                //       image: AssetImage(ImageAsset.LOGO),
                //       width: 100,
                //       height: 40,
                //     ),
                //     Spacer(),
                //   ],
                // ),

                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.005,
                // ),


                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Spacer(),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 8),
                //       child: Icon(Icons.language),
                //     ),
                //     DropdownButton(
                //         hint: Text('English'),
                //       elevation: 0,
                //         value: selectedValue,
                //         items: [
                //           DropdownMenuItem(
                //             child: Text("English"),
                //             value: 1,
                //           ),
                //           DropdownMenuItem(
                //             child: Text("عربي"),
                //             value: 2,
                //           ),
                //         ],
                //         onChanged: (value) {
                //           setState(() {
                //             selectedValue = value;
                //           });
                //         }),
                //     Spacer()
                //   ],
                // ),



              ],
            ),
          ),
        ),
      ),
    );

  }
  void _continueWithEmail() {
    setState(() {
      print('pressed');
    });
  }
}