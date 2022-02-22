import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/hr/absent_approval.dart';
import 'package:hrandsells/hr/leave_tour.dart';
import 'package:hrandsells/sales/aroundme_page.dart';
import 'package:hrandsells/sales/dashboard_page.dart';
import 'package:hrandsells/sales/order_page.dart';
import 'package:hrandsells/sales/qr_code.dart';
import 'package:hrandsells/sales/report.dart';
import 'package:hrandsells/sales/search_page.dart';
import 'package:hrandsells/sales/work_note.dart';
import 'package:slide_drawer/slide_drawer.dart';

import 'dashboard_org.dart';


class Sales_Homepage extends StatefulWidget {
  const Sales_Homepage({Key? key}) : super(key: key);

  @override
  _Sales_HomepageState createState() => _Sales_HomepageState();
}

class _Sales_HomepageState extends State<Sales_Homepage> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF8CA6DB),

            title: Center(child: Text("Sales")),
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   // call toggle from SlideDrawer to alternate between open and close
            //   // when pressed menu button
            //   onPressed: () => SlideDrawer.of(context)!.toggle(),
            // ),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //   height: MediaQuery.of(context).size.width/2.5,
                      //   width: MediaQuery.of(context).size.width/2.5,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     //border: Border.all(color: Colors.grey),
                      //     borderRadius: BorderRadius.circular(20),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.5),
                      //         spreadRadius: 1,
                      //         blurRadius: 5,
                      //         offset: Offset(0, 3), // changes position of shadow
                      //       ),
                      //     ],
                      //   ),
                      //   child: FlatButton(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(20.0)),
                      //
                      //     onPressed: (){
                      //
                      //     },
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         // const Icon(Icons.sync,
                      //         //   size: 50,
                      //         //   color: Color(0xff4AA0EC),
                      //         // ),
                      //
                      //         Image(
                      //           image: AssetImage('images/sync.png'),
                      //           height: 60,
                      //           width: 60,
                      //         ),
                      //
                      //         SizedBox(height: 20,),
                      //
                      //         Text("Data Sync",
                      //           textAlign: TextAlign.center,
                      //           style: GoogleFonts.openSans(
                      //             fontSize: 15,
                      //             color: Colors.grey,
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      Container(
                        height: MediaQuery.of(context).size.width/2.5,
                        width: MediaQuery.of(context).size.width/2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard_page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(Icons.dashboard,
                              //   size: 50,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/dashboard.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("DashBoard",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 20,),

                      Container(
                        height: MediaQuery.of(context).size.width/2.5,
                        width: MediaQuery.of(context).size.width/2.65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkNote_Page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.networkWired,
                              //   size: 50,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/worknote.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Work Note",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30.0, bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //   height: MediaQuery.of(context).size.width/2.5,
                      //   width: MediaQuery.of(context).size.width/2.5,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     //border: Border.all(color: Colors.grey),
                      //     borderRadius: BorderRadius.circular(20),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.5),
                      //         spreadRadius: 1,
                      //         blurRadius: 5,
                      //         offset: Offset(0, 3), // changes position of shadow
                      //       ),
                      //     ],
                      //   ),
                      //   child: FlatButton(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(20.0)),
                      //
                      //     onPressed: (){
                      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard_page()));
                      //     },
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         // const Icon(Icons.dashboard,
                      //         //   size: 50,
                      //         //   color: Color(0xff4AA0EC),
                      //         // ),
                      //
                      //         Image(
                      //           image: AssetImage('images/dashboard.png'),
                      //           height: 60,
                      //           width: 60,
                      //         ),
                      //
                      //         SizedBox(height: 20,),
                      //
                      //         Text("DashBoard",
                      //           textAlign: TextAlign.center,
                      //           style: GoogleFonts.openSans(
                      //             fontSize: 15,
                      //             color: Colors.grey,
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      Container(
                        height: MediaQuery.of(context).size.width/2.5,
                        width: MediaQuery.of(context).size.width/2.65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Report_page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(Icons.pages_outlined,
                              //   size: 50,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/report.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Report",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 20,),

                      Container(
                        height: MediaQuery.of(context).size.width/2.5,
                        width: MediaQuery.of(context).size.width/2.65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
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
                            showSearch(context: context, delegate: SearchUser());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.search,
                              //   size: 50,
                              //     color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/search.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Search",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30.0, bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width/2.5,
                        width: MediaQuery.of(context).size.width/2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Order_page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.clipboardCheck,
                              //   size: 50,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/order.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Order",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 20,),

                      Container(
                        height: MediaQuery.of(context).size.width/2.5,
                        width: MediaQuery.of(context).size.width/2.65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Report_page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(Icons.pages_outlined,
                              //   size: 50,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/report.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Report",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30.0, bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width/2.5,
                        width: MediaQuery.of(context).size.width/2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Aroundme_page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.searchLocation,
                              //   size: 50,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/aroundme.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Around Me",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      // SizedBox(width: 20,),
                      //
                      // Container(
                      //   height: MediaQuery.of(context).size.width/2.5,
                      //   width: MediaQuery.of(context).size.width/2.65,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     //border: Border.all(color: Colors.grey),
                      //     borderRadius: BorderRadius.circular(20),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.5),
                      //         spreadRadius: 1,
                      //         blurRadius: 5,
                      //         offset: Offset(0, 3), // changes position of shadow
                      //       ),
                      //     ],
                      //   ),
                      //   child: FlatButton(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(20.0)),
                      //
                      //     onPressed: (){
                      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>QRScanPage()));
                      //     },
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         // const Icon(Icons.qr_code,
                      //         //   size: 50,
                      //         //   color: Color(0xff4AA0EC),
                      //         // ),
                      //
                      //         Image(
                      //           image: AssetImage('images/mqrcode.png'),
                      //           height: 60,
                      //           width: 60,
                      //         ),
                      //
                      //         SizedBox(height: 20,),
                      //
                      //         Text("MQR Registration",
                      //           textAlign: TextAlign.center,
                      //           style: GoogleFonts.openSans(
                      //             fontSize: 15,
                      //             color: Colors.grey,
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),


                    ],
                  ),
                ),


                SizedBox(height: 20,),

              ],
            ),
          ),

        ),

      ),
    );
  }
}
