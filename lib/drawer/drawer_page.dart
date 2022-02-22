// import 'package:flutter/material.dart';
// import 'package:hrandsells/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hrandsells/hr/absent_approval.dart';
// import 'package:hrandsells/hr/leave_tour.dart';
// import 'package:slide_drawer/slide_drawer.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//
// //
// class Drawerpage extends StatefulWidget {
//   const Drawerpage({Key? key}) : super(key: key);
//
//   @override
//   _DrawerpageState createState() => _DrawerpageState();
// }
//
// class _DrawerpageState extends State<Drawerpage> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //title: 'Flutter Demo',
//       // theme: ThemeData(
//       //   // This is the theme of your application.
//       //   //
//       //   // Try running your application with "flutter run". You'll see the
//       //   // application has a blue toolbar. Then, without quitting the app, try
//       //   // changing the primarySwatch below to Colors.green and then invoke
//       //   // "hot reload" (press "r" in the console where you ran "flutter run",
//       //   // or simply save your changes to "hot reload" in a Flutter IDE).
//       //   // Notice that the counter didn't reset back to zero; the application
//       //   // is not restarted.
//       //   primarySwatch: Colors.blue,
//       // ),
//       // home: Drawerpage(),
//       body:
//       Container(
//         child: SlideDrawer(
//           child: Homepage(),
//           //brightness: Brightness.dark,
//           alignment: SlideDrawerAlignment.start,
//           // headDrawer: Image.asset('images/loginscreen.PNG'),
//           // backgroundGradient: const LinearGradient(
//           //   begin: Alignment.topLeft,
//           //   end: Alignment.bottomRight,
//           //   stops: [0.0, 1.0],
//           //   colors: [
//           //     Color(0xFFf4ad5e),
//           //     Color(0xFFc23e17),
//           //
//           //   ],
//           // ),
//
//           drawer: SingleChildScrollView(
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   stops: [0.0, 1.0],
//                   colors: [
//                     // Color(0xFFf4ad5e),
//                     // Color(0xFFc23e17),
//                     Color(0xFFB993D6),
//                     Color(0xFF8CA6DB),
//
//                   ],
//                 ),
//               ),
//               padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//               child: Theme(
//                 data: ThemeData(brightness: Brightness.dark),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//
//                     //Image(image: AssetImage('images/loginscreen.PNG'),),
//
//                     Row(
//                       children: [
//                         Image(image: AssetImage('images/osl.jpg'),),
//                         SizedBox(width: 10,),
//                         Text("Orange Solutions Ltd.",
//                           style: GoogleFonts.openSans(
//                             fontSize: 22,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//
//                     const Padding(
//                       padding: EdgeInsets.only(right: 65.0),
//                       child: Divider(
//                         thickness: 1,
//                         color: Colors.white,
//                       ),
//                     ),
//
//                     GestureDetector(
//                       onTap: (){
//
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 8),
//                         child: Row(
//                           children: [
//
//                             const Icon(Icons.notifications_rounded,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Notifications",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // ListTile(
//                     //     leading: const Icon(Icons.notifications_rounded,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Notifications",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //
//                     //     }
//                     // ),
//
//                     GestureDetector(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave_page()));
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 20),
//                         child: Row(
//                           children: [
//
//                             const Icon(FontAwesomeIcons.calendarPlus,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Leave and Tour Application",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // ListTile(
//                     //     leading: const Icon(FontAwesomeIcons.calendarPlus,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Leave and Tour Application",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave_page()));
//                     //     }
//                     // ),
//
//                     GestureDetector(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApproval_page()));
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 20),
//                         child: Row(
//                           children: [
//
//                             const Icon(FontAwesomeIcons.calendarMinus,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Absence Approval Application",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // ListTile(
//                     //     leading: const Icon(FontAwesomeIcons.calendarMinus,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Absence Approval Application",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //       Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApproval_page()));
//                     //     }
//                     // ),
//
//                     GestureDetector(
//                       onTap: (){
//
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 20),
//                         child: Row(
//                           children: [
//
//                             const Icon(FontAwesomeIcons.clipboardCheck,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Personal Attendance Info",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // ListTile(
//                     //     leading: const Icon(FontAwesomeIcons.clipboardCheck,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Personal Attendance Info",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //
//                     //     }
//                     // ),
//
//                     GestureDetector(
//                       onTap: (){
//
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 20),
//                         child: Row(
//                           children: [
//
//                             const Icon(FontAwesomeIcons.infoCircle,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Personal Duty Schedule",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // ListTile(
//                     //     leading: const Icon(FontAwesomeIcons.calendarAlt,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Personal Duty Schedule",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //
//                     //     }
//                     // ),
//
//                     GestureDetector(
//                       onTap: (){
//
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 20),
//                         child: Row(
//                           children: [
//
//                             const Icon(FontAwesomeIcons.infoCircle,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Personal Leave Information",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // ListTile(
//                     //     leading: const Icon(FontAwesomeIcons.infoCircle,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Personal Leave Information",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //
//                     //     }
//                     // ),
//
//                     GestureDetector(
//                       onTap: (){
//
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 20),
//                         child: Row(
//                           children: [
//
//                             const Icon(FontAwesomeIcons.info,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Date Wise Leave Information",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // ListTile(
//                     //     leading: const Icon(FontAwesomeIcons.info,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Date Wise Leave Information",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //
//                     //     }
//                     // ),
//
//                     GestureDetector(
//                       onTap: (){
//
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 8.0,top: 20),
//                         child: Row(
//                           children: [
//
//                             const Icon(FontAwesomeIcons.fileAlt,
//                               size: 20,
//                               color: Colors.white,
//                             ),
//
//                             SizedBox(width: 10,),
//
//                             Text("Personal Pay Slip",
//                               style: GoogleFonts.openSans(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     SizedBox(height: 180,),
//
//                     // ListTile(
//                     //     leading: const Icon(FontAwesomeIcons.fileAlt,
//                     //       size: 25,
//                     //       color: Colors.white,
//                     //     ),
//                     //     title: Text("Personal Pay Slip",
//                     //       style: GoogleFonts.openSans(
//                     //         fontSize: 12,
//                     //         color: Colors.white,
//                     //       ),
//                     //     ),
//                     //     onTap: (){
//                     //
//                     //     }
//                     // ),
//
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//         ),
//       )
//       //home: Custom_page('a', 'b' ),
//     );
//
//
//
//
//
//
//
//
//   }
// }
// //
//
//
// // items: [
// //   MenuItem("Personal Notifications",
// //       onTap: (){
// //
// //       }
// //   ),
// //
// //   MenuItem("title",
// //       onTap: (){
// //
// //       }
// //   ),
// //
// //   MenuItem("title",
// //       onTap: (){
// //
// //       }
// //   ),
// //
// //   MenuItem("title",
// //       onTap: (){
// //
// //       }
// //   ),
// //
// // ],



import 'package:flutter/material.dart';
import 'package:hrandsells/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/hr/absent_approval.dart';
import 'package:hrandsells/hr/leave_tour.dart';
import 'package:hrandsells/hr/viewNotification.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


//
class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  _DrawerpageState createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //title: 'Flutter Demo',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      // home: Drawerpage(),
        body:
        Container(
          child: SlideDrawer(
            child: Homepage(),
            //brightness: Brightness.dark,
            alignment: SlideDrawerAlignment.start,
            // headDrawer: Image.asset('images/loginscreen.PNG'),
            // backgroundGradient: const LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   stops: [0.0, 1.0],
            //   colors: [
            //     Color(0xFFf4ad5e),
            //     Color(0xFFc23e17),
            //
            //   ],
            // ),

            drawer: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                    colors: [
                      // Color(0xFFf4ad5e),
                      // Color(0xFFc23e17),
                      Colors.white,
                      Colors.white,

                    ],
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Theme(
                  data: ThemeData(brightness: Brightness.dark),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      //Image(image: AssetImage('images/loginscreen.PNG'),),

                      Row(
                        children: [
                          Image(image: AssetImage('images/orange.png'),
                            height: 150,
                            width: 150,),
                          SizedBox(width: 10,),
                          // Text("Orange Solutions Limited",
                          //   style: GoogleFonts.openSans(
                          //     fontSize: 22,
                          //     color: Color(0xFF2D3686),
                          //   ),
                          // ),
                        ],
                      ),

                      const Padding(
                        padding: EdgeInsets.only(right: 65.0),
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFF2D3686),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewNotification()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 8),
                          child: Row(
                            children: [

                              const Icon(Icons.notifications_rounded,
                                size: 20,
                                color: Color(0xFF2D3686),
                              ),

                              SizedBox(width: 10,),

                              Text("Notifications",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF2D3686),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),

                      // ListTile(
                      //     leading: const Icon(Icons.notifications_rounded,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Notifications",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //
                      //     }
                      // ),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave_page()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 20),
                          child: Row(
                            children: [

                              const Icon(FontAwesomeIcons.calendarPlus,
                                size: 20,
                                color: Color(0xFF2D3686),
                              ),

                              SizedBox(width: 10,),

                              Text("Leave and Tour Application",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF2D3686),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),

                      // ListTile(
                      //     leading: const Icon(FontAwesomeIcons.calendarPlus,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Leave and Tour Application",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave_page()));
                      //     }
                      // ),

                      // GestureDetector(
                      //   onTap: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApproval_page()));
                      //   },
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 8.0,top: 20),
                      //     child: Row(
                      //       children: [
                      //
                      //         const Icon(FontAwesomeIcons.calendarMinus,
                      //           size: 20,
                      //           color: Color(0xFF2D3686),
                      //         ),
                      //
                      //         SizedBox(width: 10,),
                      //
                      //         Text("Absence Approval Application",
                      //           style: GoogleFonts.openSans(
                      //             fontSize: 14,
                      //             color: Color(0xFF2D3686),
                      //           ),
                      //         ),
                      //
                      //
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // ListTile(
                      //     leading: const Icon(FontAwesomeIcons.calendarMinus,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Absence Approval Application",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApproval_page()));
                      //     }
                      // ),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 20),
                          child: Row(
                            children: [

                              const Icon(FontAwesomeIcons.clipboardCheck,
                                size: 20,
                                color: Color(0xFF2D3686),
                              ),

                              SizedBox(width: 10,),

                              Text("Personal Attendance Info",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF2D3686),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),

                      // ListTile(
                      //     leading: const Icon(FontAwesomeIcons.clipboardCheck,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Personal Attendance Info",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //
                      //     }
                      // ),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 20),
                          child: Row(
                            children: [

                              const Icon(FontAwesomeIcons.infoCircle,
                                size: 20,
                                color: Color(0xFF2D3686),
                              ),

                              SizedBox(width: 10,),

                              Text("Personal Duty Schedule",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF2D3686),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),

                      // ListTile(
                      //     leading: const Icon(FontAwesomeIcons.calendarAlt,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Personal Duty Schedule",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //
                      //     }
                      // ),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 20),
                          child: Row(
                            children: [

                              const Icon(FontAwesomeIcons.infoCircle,
                                size: 20,
                                color: Color(0xFF2D3686),
                              ),

                              SizedBox(width: 10,),

                              Text("Personal Leave Information",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF2D3686),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),

                      // ListTile(
                      //     leading: const Icon(FontAwesomeIcons.infoCircle,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Personal Leave Information",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //
                      //     }
                      // ),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 20),
                          child: Row(
                            children: [

                              const Icon(FontAwesomeIcons.info,
                                size: 20,
                                color: Color(0xFF2D3686),
                              ),

                              SizedBox(width: 10,),

                              Text("Date Wise Leave Information",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF2D3686),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),

                      // ListTile(
                      //     leading: const Icon(FontAwesomeIcons.info,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Date Wise Leave Information",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //
                      //     }
                      // ),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 20),
                          child: Row(
                            children: [

                              const Icon(FontAwesomeIcons.fileAlt,
                                size: 20,
                                color: Color(0xFF2D3686),
                              ),

                              SizedBox(width: 10,),

                              Text("Personal Pay Slip",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF2D3686),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //SizedBox(height: 180,),

                      // ListTile(
                      //     leading: const Icon(FontAwesomeIcons.fileAlt,
                      //       size: 25,
                      //       color: Color(0xFF2D3686),
                      //     ),
                      //     title: Text("Personal Pay Slip",
                      //       style: GoogleFonts.openSans(
                      //         fontSize: 12,
                      //         color: Color(0xFF2D3686),
                      //       ),
                      //     ),
                      //     onTap: (){
                      //
                      //     }
                      // ),

                    ],
                  ),
                ),
              ),
            ),

          ),
        )
      //home: Custom_page('a', 'b' ),
    );








  }
}
//


// items: [
//   MenuItem("Personal Notifications",
//       onTap: (){
//
//       }
//   ),
//
//   MenuItem("title",
//       onTap: (){
//
//       }
//   ),
//
//   MenuItem("title",
//       onTap: (){
//
//       }
//   ),
//
//   MenuItem("title",
//       onTap: (){
//
//       }
//   ),
//
// ],