// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'dart:math';
// import 'package:intl/intl.dart';
//
// class DashBoard_page extends StatefulWidget {
//   const DashBoard_page({Key? key}) : super(key: key);
//
//   @override
//   _DashBoard_pageState createState() => _DashBoard_pageState();
// }
//
// class _DashBoard_pageState extends State<DashBoard_page> {
//
//   DateTime now = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color(0xFF8CA6DB),
//           title: Text("Dash Board",
//             textAlign: TextAlign.center,
//             style: GoogleFonts.openSans(
//               fontSize: 20,
//             ),
//           ),
//         ),
//
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20,),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Column(
//                       children: [
//
//                         CustomPaint(
//                           foregroundPainter: CircleProgress(20),
//                           child: Container(
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//
//                         // Stack(
//                         //   children: <Widget>[
//                         //     Container(
//                         //       width: double.infinity,
//                         //       height: 70,
//                         //       child: Center(
//                         //         child: CustomPaint(
//                         //           foregroundPainter: CircleProgress(20),
//                         //           child: Container(
//                         //             height: 100,
//                         //             width: 100,
//                         //           ),
//                         //         ),
//                         //       ),
//                         //       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         //       padding: EdgeInsets.only(bottom: 10),
//                         //       decoration: BoxDecoration(
//                         //         border: Border.all(
//                         //             color: Colors.purple,
//                         //             width: 1),
//                         //         borderRadius: BorderRadius.circular(5),
//                         //         shape: BoxShape.rectangle,
//                         //       ),
//                         //     ),
//                         //     Positioned(
//                         //       left: 40,
//                         //       top: 12,
//                         //       child: Container(
//                         //         padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                         //         color: Color(0xfffafafa),
//                         //         child: Text(
//                         //           'Leave Type',
//                         //           style: GoogleFonts.openSans(
//                         //               fontSize: 15,
//                         //               color: Color(0xffF17A0D)
//                         //           ),
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ],
//                         // ),
//
//                         SizedBox(height: 20,),
//
//                         Text("20%"),
//                         SizedBox(height: 20,),
//
//                         Text("Terget Order"),
//                       ],
//                     ),
//                   ),
//
//                   SizedBox(width: 50,),
//
//                   Center(
//                     child: Column(
//                       children: [
//                         CustomPaint(
//                           foregroundPainter: CircleProgress(40),
//                           child: Container(
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//
//                         SizedBox(height: 20,),
//
//                         Text("40%"),
//                         SizedBox(height: 20,),
//
//                         Text("Total Shop Visited"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: 30,),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Column(
//                       children: [
//                         CustomPaint(
//                           foregroundPainter: CircleProgress(60),
//                           child: Container(
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//
//                         SizedBox(height: 20,),
//
//                         Text("60%"),
//                         SizedBox(height: 20,),
//
//                         Text("Terget Delivery"),
//                       ],
//                     ),
//                   ),
//
//                   SizedBox(width: 50,),
//
//                   Center(
//                     child: Column(
//                       children: [
//                         CustomPaint(
//                           foregroundPainter: CircleProgress(80),
//                           child: Container(
//                             height: 100,
//                             width: 100,
//                           ),
//                         ),
//
//                         SizedBox(height: 20,),
//
//                         Text("80%"),
//                         SizedBox(height: 20,),
//
//                         Text("Total Shop/Memo"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: 20,),
//
//               Container(
//                 //height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                   color: Color(0xffccdce6),
//                 ),
//
//                 child: Column(
//                   children: [
//                     SizedBox(height: 20,),
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(DateFormat.yMMMEd().format(DateTime.now()),
//                           style: GoogleFonts.openSans(
//                             fontSize: 15,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(width: 50,),
//                         Text(DateFormat.j().format(DateTime.now()),
//                           style: GoogleFonts.openSans(
//                             fontSize: 15,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//
//
//                     SizedBox(height: 10,),
//
//
//
//                     Container(
//                       height: 50,
//                       width: 100,
//
//                       color: Colors.white,
//                       child: Center(
//                         child: Text("M Target",
//                           style: GoogleFonts.openSans(
//                             fontSize: 15,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//
//
//                     Divider(
//                       thickness: 2,
//                       color: Colors.white,
//                     ),
//
//                     SizedBox(height: 10,),
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Center(
//                               child: Text("15",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 25,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//
//
//
//                         SizedBox(width: 10,),
//
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(width: 10,),
//
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ),
//                         ),
//
//                       ],
//                     ),
//
//                     SizedBox(height: 10,),
//
//                     Divider(
//                       thickness: 2,
//                       color: Colors.white,
//                     ),
//
//                     Center(
//                       child: Text("M Target",
//                         style: GoogleFonts.openSans(
//                           fontSize: 15,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//
//
//                     Divider(
//                       thickness: 2,
//                       color: Colors.white,
//                     ),
//
//
//                     SizedBox(height: 10,),
//
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Center(
//                               child: Text("590",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 25,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(width: 10,),
//
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(width: 10,),
//
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ),
//                         ),
//
//                       ],
//                     ),
//
//
//                     SizedBox(height: 10,),
//
//                     Divider(
//                       thickness: 2,
//                       color: Colors.white,
//                     ),
//
//                     Center(
//                       child: Text("M Target",
//                         style: GoogleFonts.openSans(
//                           fontSize: 15,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//
//                     Divider(
//                       thickness: 2,
//                       color: Colors.white,
//                     ),
//
//
//
//                     SizedBox(height: 10,),
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Center(
//                               child: Text("7008",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 25,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(width: 10,),
//
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(width: 10,),
//
//                         Container(
//                           height: MediaQuery.of(context).size.width/3.5,
//                           width: MediaQuery.of(context).size.width/3.5,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             //border: Border.all(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.5),
//                                 spreadRadius: 1,
//                                 blurRadius: 5,
//                                 offset: Offset(0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ),
//                           child: FlatButton(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0)),
//
//                             onPressed: (){
//
//                             },
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                                 Text("Demo - 1",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ),
//                         ),
//
//                       ],
//                     ),
//                     SizedBox(height: 20,),
//
//                   ],
//                 ),
//               ),
//
//
//
//             ],
//           ),
//         ),
//
//       ),
//     );
//   }
// }
//
//
// class CircleProgress extends CustomPainter {
//   double currentProgrss;
//   CircleProgress(this.currentProgrss);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     // TODO: implement paint
//     Paint outerCircle = Paint()
//       ..strokeWidth = 10
//       ..color = Color(0xffe8ecf1)
//       ..style = PaintingStyle.stroke;
//
//     Paint completeArc = Paint()
//       ..strokeWidth = 10
//       ..color = Color(0xFF8CA6DB)
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;
//
//     Offset center = Offset(size.width / 2, size.height / 2);
//     double radius = min(size.width / 2, size.height / 2);
//
//     canvas.drawCircle(center, radius, outerCircle);
//
//     double angle = 2 * pi * (currentProgrss / 100);
//     canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
//         angle, false, completeArc);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     return true;
//   }
// }
//
//
