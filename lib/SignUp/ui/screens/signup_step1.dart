import 'package:cronotracker/utils/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../DrawerMenu/ui/screen/zoom_drawer_screen.dart';
import '../../../NavigationBar/ui/Screen/navbar.dart';
import '../../../Trending/ui/Screen/trending_screen.dart';
import '../../../utils/Images/Images.dart';
import '../../passwordStrengthChecker/password_strength.dart';
class SignUpStep1 extends StatefulWidget {
  @override
  State<SignUpStep1> createState() => _SignUpStep1State();
}

class _SignUpStep1State extends State<SignUpStep1> {


  bool _isContainUpperCase(String p) {
    List<String> list1 = List<String>.generate(
        p.length, (index) => p[index]);
    List<String> letters = ['A','B','C','D','E', 'F', 'G', 'H', 'I', 'J', 'K', 'L','M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
    if (list1.any((item) => letters.contains(item)))
      return true;
    else
      return false;
  }

  bool isEmail(String p) {
    List<String> list1 = List<String>.generate(p.length, (index) => p[index]);
    if (list1.contains('@'))
      return true;
    else
      return false;
  }




  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
  var emailController = TextEditingController();
  var passController = TextEditingController();
  bool _isVisible = false;




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
          ],),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Center(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
                  child: Stack(
                     children: [
                       Container(
                         width: double.infinity,
                         height: 5,
                         color: PrimaryColor,
                       ),
                       // Container(
                       //   width: MediaQuery.of(context).size.width * 0.33,
                       //   height: 5,
                       //   color: Colors.blueAccent,
                       // ),
                     ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Text(
                  'Let\'s start an amazing journey \nCreate your free account',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 15, top: 30),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'First Name',
                      style: TextStyle(
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.sort, color: Colors.black,),
                      hintText: 'Enter your name',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 15, top: 30),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Last Name',
                      style: TextStyle(
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.sort, color: Colors.black,),
                      hintText: 'Enter your last name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 15, top: 30),
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
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                        btnActive = value.length == 1 ? true : false;
                      });
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: (){
                        emailController.clear();
                      }),
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
                SizedBox(height: 10),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 5, left: 15, top: 30),
                //   child: Container(
                //     alignment: Alignment.topLeft,
                //     child: Text(
                //       'Password Strength',
                //       style: TextStyle(
                //           fontWeight: FontWeight.w400
                //       ),
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: FlutterPasswordStrength(password:passController.text ),
                // ),
                //
                // SizedBox(height: 30),
                //
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 2),
                //       child: IconButton(
                //         onPressed: (){},
                //         icon: passController.text.length >= 7 && _isContainUpperCase(passController.text) == true ? Icon(Icons.check, color: Colors.green[800]) : Icon(Icons.warning, color: Colors.yellow[800]),
                //       ),
                //     ),
                //
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: TextButton(
                //        child: passController.text.length >= 7 && _isContainUpperCase(passController.text) == true ? Text('Strong Enough !', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),) : Text('Not Strong Enough !', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                //       onPressed: (){},
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 2),
                //       child: IconButton(
                //         onPressed: (){},
                //         icon: passController.text.length >= 7 ? Icon(Icons.check, color: Colors.green[800]) : Icon(Icons.close, color: Colors.red[800]),
                //       )
                //     ),
                //
                //
                //
                //     Padding(
                //       padding: const EdgeInsets.only(left: 2),
                //       child: Text(
                //         'Password must have at least 7 characters',
                //         style: TextStyle(
                //             fontSize: 12,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 2),
                //       child: IconButton(
                //         onPressed: (){},
                //         icon: _isContainUpperCase(passController.text) ? Icon(Icons.check, color: Colors.green[800]) : Icon(Icons.close, color: Colors.red[800]),
                //       )
                //     ),

                //     Padding(
                //       padding: const EdgeInsets.only(left: 2),
                //       child: Text(
                //         'Passwords must have at least one uppercase (\'A\' - \'Z\')',
                //         style: TextStyle(
                //           fontSize: 12,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),


                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Container(
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          print(emailController.text);
                        } else {
                          ZoomDrawer.of(context)!.toggle();
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

                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //   const Text(
                //       'By signing up, you agree on',
                //       style: TextStyle(
                //         color: Colors.grey,
                //           fontSize: 12,
                //           fontWeight: FontWeight.w400
                //       ),
                //     ),
                //
                //     TextButton(
                //       onPressed: (){},
                //         child: const Text(
                //           'Terms of Service',
                //           style: TextStyle(
                //             decoration: TextDecoration.underline,
                //             color: Colors.grey,
                //             fontSize: 12,
                //             fontWeight: FontWeight.w400
                //           ),
                //         ),
                //     )
                //   ],
                // ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //    const Text(
                //       'And',
                //       style: TextStyle(
                //           color: Colors.grey,
                //           fontSize: 12,
                //           fontWeight: FontWeight.w400
                //       ),
                //     ),
                //
                //     TextButton(
                //       onPressed: (){},
                //       child: const Text(
                //         'Privacy policy',
                //         style: TextStyle(
                //             decoration: TextDecoration.underline,
                //             color: Colors.grey,
                //             fontSize: 12,
                //             fontWeight: FontWeight.w400
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                //
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //
                //    const Text(
                //       'Already have an account ?',
                //       style: TextStyle(
                //         fontWeight: FontWeight.w400,
                //         fontSize: 14
                //       ),
                //     ),
                //     TextButton(
                //       onPressed: (){
                //         // Navigator.push(
                //         //   context,
                //         //   MaterialPageRoute(
                //         //       builder: (context) => WelcomeToTechDealScreen()),
                //         // );
                //       },
                //       child: const Text(
                //           'Sign in',
                //         style: TextStyle(
                //           color: Colors.blueAccent,
                //           decoration: TextDecoration.underline
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                //
                //
                //  Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //      Spacer(),
                //      Text(
                //       'Stay organized with ',
                //       style: const  TextStyle(
                //         fontWeight: FontWeight.w300,
                //         fontSize: 14,
                //       ),
                //     ),
                //      Image(
                //       image: AssetImage(ImageAsset.LOGO),
                //       width: 100,
                //       height: 40,
                //     ),
                //     Spacer(),
                //   ],
                // ),
                //
                //
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Spacer(),
                //     const Padding(
                //       padding: const EdgeInsets.only(right: 8),
                //       child: Icon(Icons.language),
                //     ),
                //     DropdownButton(
                //         hint: const Text('English'),
                //         elevation: 0,
                //         value: selectedValue,
                //         items: [
                //           const DropdownMenuItem(
                //             child: Text("English"),
                //             value: 1,
                //           ),
                //           const DropdownMenuItem(
                //             child: Text("عربي"),
                //             value: 2,
                //           ),
                //         ],
                //         onChanged: (value) {
                //           setState(() {
                //             selectedValue = value;
                //           });
                //         }),
                //     const Spacer()
                //   ],
                // ),
                //


              ],
            ),
          ),
        ),
      ),
    );

  }
}