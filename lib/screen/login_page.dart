// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hrandsells/drawer/drawer_page.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:geocoding/geocoding.dart';
//
// class Login_page extends StatefulWidget {
//   const Login_page({Key? key}) : super(key: key);
//
//   @override
//   _Login_pageState createState() => _Login_pageState();
// }
//
// class _Login_pageState extends State<Login_page> {
//
//   GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//
//   late String username;
//   late String password;
//
//
//
//   bool _obsecureText = true;
//
//   void toggle(){
//     setState(() {
//       _obsecureText = !_obsecureText;
//     });
//   }
//
//
//   Future<void>signin()async{
//     final FormState? formState = _formkey.currentState;
//
//     if(formState!.validate()) {
//       formState.save();
//       if(username == '1234' && password == '1234'){
//         Navigator.push(context, MaterialPageRoute(builder: (context) => Drawerpage()));
//       }
//       else{
//         // print("user not found");
//       }
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Color(0xFFF15922),
//             title: Center(
//               child: Text("Account",
//                 style: GoogleFonts.openSans(
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ),
//
//           body: Center(
//             child: SingleChildScrollView(
//               child: Form(
//                 key: _formkey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//
//                     Container(
//                       height: 200,
//                       width: 200,
//                       child: ClipRRect(
//
//                         borderRadius: BorderRadius.circular(20),
//                         child: Image(
//                           image: AssetImage(
//                               'images/osl2.jpg'),
//                         ),
//                       ),
//                     ),
//
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Container(
//                        // decoration: BoxDecoration(
//                        //   color: Colors.white,
//                        //   border: Border.all(color: Colors.grey),
//                        // ),
//                        child: TextFormField(
//                          onChanged: (input){
//                            username = input;
//                          },
//                          validator: (input){
//                            if(input!.isEmpty){
//                              return "Empty";
//                            }
//                          },
//
//                          scrollPadding: EdgeInsets.all(20),
//                          decoration: const InputDecoration(
//                            contentPadding: EdgeInsets.only(left: 20), // add padding to adjust text
//                            isDense: false,
//                            hintText: "User Name",
//                            labelText: "User Name",
//                            border: OutlineInputBorder(),
//                            suffixIcon: Padding(
//                              padding: EdgeInsets.only(top: 8), // add padding to adjust icon
//                              child: Icon(Icons.person),
//                            ),
//                          ),
//                        ),
//                       ),
//                     ),
//
//
//                     Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Container(
//                         // decoration: BoxDecoration(
//                         //   color: Colors.white,
//                         //   border: Border.all(color: Colors.grey),
//                         // ),
//                         child: TextFormField(
//                           obscureText: _obsecureText,
//                           onChanged: (input){
//                             password = input;
//                           },
//                           scrollPadding: EdgeInsets.all(20),
//                           decoration: InputDecoration(
//                             contentPadding: EdgeInsets.only(left: 20), // add padding to adjust text
//                             isDense: true,
//                             hintText: "Password",
//                             labelText: "Password",
//                             border: OutlineInputBorder(),
//                             suffixIcon: Padding(
//                               padding: EdgeInsets.only(top: 8), // add padding to adjust icon
//                               child: IconButton(
//                                   icon: Icon(_obsecureText ? FontAwesomeIcons.solidEye : FontAwesomeIcons.solidEyeSlash,),
//                                   onPressed: (){
//                                     toggle();
//                                   },
//                               )
//
//
//                             ),
//
//                           ),
//                         ),
//                       ),
//                     ),
//
//
//                     Container(
//                       height: 40,
//                       width: MediaQuery.of(context).size.width/1.2,
//                       decoration: BoxDecoration(
//                         color: Color(0xffF15922),
//                         //border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 5,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: FlatButton(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20.0)),
//
//                         onPressed: (){
//                           signin();
//                           //print(username);
//                         },
//                         child: Text("Login",
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.openSans(
//                             fontSize: 18,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/drawer/drawer_page.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  late String username;
  late String password;

  bool _obsecureText = true;

  void toggle(){
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }


  Future<void>signin()async{
    final FormState? formState = _formkey.currentState;

    if(formState!.validate()) {
      formState.save();
      if(username == '1234' && password == '1234'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Drawerpage()));
      }
      else{
        // print("user not found");
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Color(0xFF8CA6DB),
          //   title: Center(
          //     child: Text("Account",
          //       style: GoogleFonts.openSans(
          //         fontSize: 20,
          //       ),
          //     ),
          //   ),
          // ),

          body: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      height: 200,
                      width: 200,
                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(
                              'images/orange.png'),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   border: Border.all(color: Colors.grey),
                        // ),
                        child: TextFormField(
                          onChanged: (input){
                            username = input;
                          },
                          validator: (input){
                            if(input!.isEmpty){
                              return "Empty";
                            }
                          },

                          scrollPadding: EdgeInsets.all(20),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20), // add padding to adjust text
                            isDense: false,
                            hintText: "User Name",
                            labelText: "User Name",
                            border: OutlineInputBorder(),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(top: 8), // add padding to adjust icon
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   border: Border.all(color: Colors.grey),
                        // ),
                        child: TextFormField(
                          obscureText: _obsecureText,
                          onChanged: (input){
                            password = input;
                          },
                          scrollPadding: EdgeInsets.all(20),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20), // add padding to adjust text
                            isDense: true,
                            hintText: "Password",
                            labelText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(top: 8), // add padding to adjust icon
                                child: IconButton(
                                  icon: Icon(_obsecureText ? FontAwesomeIcons.solidEye : FontAwesomeIcons.solidEyeSlash,),
                                  onPressed: (){
                                    toggle();
                                  },
                                )


                            ),

                          ),
                        ),
                      ),
                    ),


                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        color: Color(0xFFF65528),
                        //border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),

                        onPressed: (){
                          signin();
                          //print(username);
                          // _getCurrentLocation();
                          // print(_currentAddress);
                          // //print(_currentPosition);
                          // print(_currentPosition.latitude);
                          // print(_currentPosition.longitude);
                        },
                        child: Text("Login",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}