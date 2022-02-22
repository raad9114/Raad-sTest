import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class DashBoard_page extends StatefulWidget {
  const DashBoard_page({Key? key}) : super(key: key);

  @override
  _DashBoard_pageState createState() => _DashBoard_pageState();
}

class _DashBoard_pageState extends State<DashBoard_page> {

  DateTime now = DateTime.now();

  double _progress1 = 20;
  double _progress2 = 40;
  double _progress3 = 60;
  double _progress4 = 80;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF8CA6DB),
            title: Text("Dash Board",
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 20,
              ),
            ),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 130.0,
                            height: 150.0,
                            child: CustomPaint(
                              painter: CircleProgress(
                                progress: _progress1,
                                startColor: Colors.blue,
                                endColor: Colors.red,
                                width: 8.0,
                              ),
                              child: Center(child: Text('$_progress1'+'%')),
                            ),
                          ),

                          // SizedBox(height: 10,),

                          Text("Target Order"),
                        ],
                      ),
                    ),

                    SizedBox(width: 50,),

                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 130.0,
                            height: 150.0,
                            child: CustomPaint(
                              painter: CircleProgress(
                                progress: _progress2,
                                startColor: Colors.blue,
                                endColor: Colors.red,
                                width: 8.0,
                              ),
                              child: Center(child: Text('$_progress2'+'%')),
                            ),
                          ),

                          // SizedBox(height: 10,),

                          Text("Total Shop Visited"),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 150.0,
                            height: 130.0,
                            child: CustomPaint(
                              painter: CircleProgress(
                                progress: _progress3,
                                startColor: Colors.blue,
                                endColor: Colors.red,
                                width: 8.0,
                              ),
                              child: Center(child: Text('$_progress3'+'%')),
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

                        Text("Terget Delivery"),
                      ],
                    ),

                    SizedBox(width: 50,),

                    Center(
                      child: Column(
                        children: [
                          Center(
                            child: SizedBox(
                              width: 150.0,
                              height: 130.0,
                              child: CustomPaint(
                                painter: CircleProgress(
                                  progress: _progress4,
                                  startColor: Colors.blue,
                                  endColor: Colors.red,
                                  width: 8.0,
                                ),
                                child: Center(child: Text('$_progress4'+'%')),
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text("Total Shop/Memo"),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20,),

                Container(
                  //height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Color(0xffccdce6),
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(DateFormat.yMMMEd().format(DateTime.now()),
                            style: GoogleFonts.openSans(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 50,),
                          Text(DateFormat.j().format(DateTime.now()),
                            style: GoogleFonts.openSans(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),




                      SizedBox(height: 10,),



                      //                     Center(
//                       child: Text("M Target",
//                         style: GoogleFonts.openSans(
//                           fontSize: 15,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold
//                         ),
//                       ),
//                     ),
//
//
//                     SizedBox(height: 10,),
//
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10.0, right: 10),
//                       child: Container(
//                         height: MediaQuery.of(context).size.width/3.5,
// //                      width: MediaQuery.of(context).size.width/3.5,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           //border: Border.all(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(10),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 1,
//                               blurRadius: 5,
//                               offset: Offset(0, 3), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             FlatButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20.0)),
//
//                               onPressed: (){
//
//                               },
//                               child: Center(
//                                 child: Text("15",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 30,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold
//                                   ),
//                                 ),
//                               ),
//                             ),
//
//
//                             Container(
//                               height: 60,
//                               color: Color(0xffccdce6),
//                               width: 1,
//                             ),
//
//
//                             //SizedBox(width: 10,),
//
//                             FlatButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20.0)),
//
//                               onPressed: (){
//
//                               },
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//
//                                   Text("Demo - 1",
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.openSans(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//
//                                   Text("Demo - 1",
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.openSans(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//
//                                   Text("Demo - 1",
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.openSans(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//
//                                 ],
//                               ),
//                             ),
//
//                             Container(
//                               height: 60,
//                               color: Color(0xffccdce6),
//                               width: 1,
//                             ),
//
//
//                             //SizedBox(width: 10,),
//
//                             FlatButton(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20.0)),
//
//                               onPressed: (){
//
//                               },
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//
//                                   Text("Demo - 1",
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.openSans(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//
//                                   Text("Demo - 1",
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.openSans(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//
//                                   Text("Demo - 1",
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.openSans(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//
//                                 ],
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ),
//                     ),

                      SizedBox(height: 10,),

                      Center(
                        child: Text("M Target",
                          style: GoogleFonts.openSans(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.width/3.5,
//                      width: MediaQuery.of(context).size.width/3.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlatButton(
                                onPressed: (){

                                  },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),


                              Container(
                                height: 60,
                                color: Color(0xffccdce6),
                                width: 1,
                              ),


                              //SizedBox(width: 10,),

                              FlatButton(
                                onPressed: (){

                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 60,
                                color: Color(0xffccdce6),
                                width: 1,
                              ),


                              //SizedBox(width: 10,),

                              FlatButton(
                                onPressed: (){
                                  print("Pressed");
                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),


                      Center(
                        child: Text("M Target",
                          style: GoogleFonts.openSans(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.width/3.5,
//                      width: MediaQuery.of(context).size.width/3.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlatButton(
                                onPressed: (){

                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),


                              Container(
                                height: 60,
                                color: Color(0xffccdce6),
                                width: 1,
                              ),


                              //SizedBox(width: 10,),

                              FlatButton(
                                onPressed: (){

                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 60,
                                color: Color(0xffccdce6),
                                width: 1,
                              ),


                              //SizedBox(width: 10,),

                              FlatButton(
                                onPressed: (){
                                  print("Pressed");
                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Center(
                        child: Text("M Target",
                          style: GoogleFonts.openSans(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.width/3.5,
//                      width: MediaQuery.of(context).size.width/3.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlatButton(
                                onPressed: (){

                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),


                              Container(
                                height: 60,
                                color: Color(0xffccdce6),
                                width: 1,
                              ),


                              //SizedBox(width: 10,),

                              FlatButton(
                                onPressed: (){

                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 60,
                                color: Color(0xffccdce6),
                                width: 1,
                              ),


                              //SizedBox(width: 10,),

                              FlatButton(
                                onPressed: (){
                                  print("Pressed");
                                },
                                child: Center(
                                  child: Text("15",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                    ],
                  ),
                ),



              ],
            ),
          ),

        ),
      ),
    );
  }
}


class CircleProgress extends CustomPainter {
  const CircleProgress({
    required this.progress,
    required this.startColor,
    required this.endColor,
    required this.width,
  })
      : assert(progress != null),
        assert(startColor != null),
        assert(endColor != null),
        assert(width != null),
        super();

  final double progress;
  final Color startColor;
  final Color endColor;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = new Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    final gradient = new SweepGradient(
      startAngle: 3 * pi / 2,
      endAngle: 7 * pi / 2,
      tileMode: TileMode.repeated,
      colors: [startColor, endColor],
    );

    final paint = new Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.butt // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    final center = new Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - (width / 2);
    final startAngle = -pi / 2;
    final sweepAngle = 2 * pi * (progress / 100);
    canvas.drawArc(new Rect.fromCircle(center: center, radius: radius),
        startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}
