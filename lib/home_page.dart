import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/hr/absent_approval.dart';
import 'package:hrandsells/hr/attendance_page.dart';
import 'package:hrandsells/hr/leave_tour.dart';
import 'package:hrandsells/hr/notification.dart';
import 'package:hrandsells/hr/payslip_page.dart';
import 'package:hrandsells/sales/sales_homepage.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:intl/intl.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  DateTime now = DateTime.now();
  String intime = '';
  String outtime = '';
  bool pressAttention = false;
  bool pressAttention1 = false;
  late String _currentAddress =" ";
  late String _currentAddressout =" ";


  Future<void> getLocationin() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position.latitude);
    print(position.longitude);

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      Placemark place = placemarks[0];

      setState(() {
        _currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
        //_currentAddressout = "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
    //print(_currentAddress);

  }

  Future<void> getLocationout() async {
    Position position = await Geolocator.getCurrentPosition();
    print(position.latitude);
    print(position.longitude);

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      Placemark place = placemarks[0];

      setState(() {
        //_currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
        _currentAddressout = "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
    //print(_currentAddress);

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,

            title: Center(child:
            // Image(
            //   image: AssetImage(
            //       'images/orange.png'),
            //   height: 150,
            //   width: 140,
            // ),
              Text("1234",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu,
                color: Colors.blue,),
              // call toggle from SlideDrawer to alternate between open and close
              // when pressed menu button
              onPressed: () => SlideDrawer.of(context)!.toggle(),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.logout,
                        color: Colors.blue)
                ),
              ),
            ],
          ),
          
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
                  child: Container(
                    //height: MediaQuery.of(context).size.width/2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // color: ispressed ? Colors.white : Colors.grey,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //
                        // SizedBox(height: 20,),
                        //
                        // Text("21", //Number of leave
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.openSans(
                        //     fontSize: 25,
                        //     color: Colors.grey,
                        //   ),
                        // ),
                        //
                        // Text("Leave Balance",
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.openSans(
                        //     fontSize: 15,
                        //     color: Colors.grey,
                        //   ),
                        // ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(10),
                            //   color: Colors.white,
                            //   border: Border.all(color: const Color(0xFFf4ad5e)),
                            //
                            // ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FlatButton(
                                  minWidth: MediaQuery.of(context).size.width/3,
                                  color: pressAttention ? Colors.white10 : Colors.green,
                                  onPressed: () {
                                    //something will change
                                    getLocationin();
                                    setState(() {
                                      DateTime now = DateTime.now();
                                      date = now.toString();
                                      String Onlydate = new DateFormat("h:mm:ssa").format(now);
                                      intime = '$Onlydate';
                                      pressAttention = !pressAttention;
                                    });
                                    print(intime);
                                  },
                                  child: Column(
                                    children: [
                                      Text("IN",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: pressAttention ? Colors.green : Colors.black,
                                        ),
                                      ),

                                      SizedBox(width: 20,),

                                      Text("$intime",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          color: pressAttention ? Colors.white : Colors.black,
                                        ),
                                      ),

                                      Text(_currentAddress,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          color: pressAttention ? Colors.white : Colors.black,
                                        ),
                                      ),



                                    ],
                                  ),
                                ),

                                // SizedBox(width: 15,),
                                //
                                // Divider(thickness: 1,color: Colors.red,),

                                // SizedBox(width: 15,),

                                FlatButton(
                                  minWidth: MediaQuery.of(context).size.width/3,
                                  color: pressAttention1 ? Colors.red : Colors.white,
                                  onPressed: ()async {
                                    //something will change
                                    getLocationout();
                                    setState(() {
                                      DateTime now = DateTime.now();
                                      date = now.toString();
                                      String Onlydate = new DateFormat("h:mm:ssa").format(now);
                                      outtime = '$Onlydate';
                                      pressAttention1 = !pressAttention1;
                                      print(outtime);
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text("OUT",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),

                                      SizedBox(width: 20,),

                                      Text("$outtime",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          color: pressAttention1 ? Colors.black : Colors.white,
                                        ),
                                      ),

                                      Text(_currentAddressout,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          color: pressAttention ? Colors.white : Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Center(
                //       child: Container(
                //         height: 40,
                //         width: 100,
                //         decoration: BoxDecoration(
                //           color: Colors.green,
                //           //border: Border.all(color: Colors.grey),
                //           borderRadius: BorderRadius.circular(10),
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.grey.withOpacity(0.5),
                //               spreadRadius: 1,
                //               blurRadius: 5,
                //               offset: Offset(0, 3), // changes position of shadow
                //             ),
                //           ],
                //         ),
                //         child: FlatButton(
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(20.0)),
                //
                //           onPressed: () {
                //             //something will change
                //             setState(() {
                //               DateTime now = DateTime.now();
                //               date = now.toString();
                //               String Onlydate = new DateFormat("h:mm:ssa").format(now);
                //               intime = '$Onlydate';
                //             });
                //             print(intime);
                //           },
                //           child: Text("IN",
                //             textAlign: TextAlign.center,
                //             style: GoogleFonts.openSans(
                //               fontSize: 18,
                //               color: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //     Center(
                //       child: Container(
                //         height: 40,
                //         width: 100,
                //         decoration: BoxDecoration(
                //           color: Colors.red,
                //           //border: Border.all(color: Colors.grey),
                //           borderRadius: BorderRadius.circular(10),
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.grey.withOpacity(0.5),
                //               spreadRadius: 1,
                //               blurRadius: 5,
                //               offset: Offset(0, 3), // changes position of shadow
                //             ),
                //           ],
                //         ),
                //         child: FlatButton(
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(20.0)),
                //
                //           onPressed: ()async {
                //             //something will change
                //             setState(() {
                //               DateTime now = DateTime.now();
                //               date = now.toString();
                //               String Onlydate = new DateFormat("h:mm:ssa").format(now);
                //               outtime = '$Onlydate';
                //               print(outtime);
                //             });
                //           },
                //           child: Text("OUT",
                //             textAlign: TextAlign.center,
                //             style: GoogleFonts.openSans(
                //               fontSize: 18,
                //               color: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),


                Padding(
                  padding: const EdgeInsets.all(30.0),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationList()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 17),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // const Icon(Icons.notifications_active_sharp,
                                    //   size: 70,
                                    //   color: Color(0xff4AA0EC),
                                    // ),

                                    Image(
                                      image: AssetImage('images/notification.png'),
                                      height: 60,
                                      width: 60,
                                    ),

                                    SizedBox(height: 10,),

                                    Text("Notificaiton",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20, ),
                                child: CircleAvatar(
                                  // backgroundColor: Colors.redAccent,
                                  backgroundColor: Color(0xff8CA6DB),
                                  radius: 10,
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ),
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

                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AttendanceField()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.clipboardCheck,
                              //   size: 60,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/attendance.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Attendance",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave_page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.calendarPlus,
                              //   size: 60,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/leavetour.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Leave and Tour",
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
                      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApproval_page()));
                      //     },
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         // const Icon(FontAwesomeIcons.calendarMinus,
                      //         //   size: 60,
                      //         //   color: Color(0xff4AA0EC),
                      //         // ),
                      //
                      //         Image(
                      //           image: AssetImage('images/absent.png'),
                      //           height: 60,
                      //           width: 60,
                      //         ),
                      //
                      //
                      //         SizedBox(height: 10,),
                      //
                      //         Text("Absence Approval",
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

                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(Icons.sync,
                              //   size: 50,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/sync.png'),
                                height: 60,
                                width: 60,
                              ),

                              SizedBox(height: 20,),

                              Text("Data Sync",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Payslip_page()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.fileAlt,
                              //   size: 60,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/payslip.png'),
                                height: 60,
                                width: 60,
                              ),


                              SizedBox(height: 20,),

                              Text("Pay Slip",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Sales_Homepage()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // const Icon(FontAwesomeIcons.sellsy,
                              //   size: 60,
                              //   color: Color(0xff4AA0EC),
                              // ),

                              Image(
                                image: AssetImage('images/sales.png'),
                                height: 60,
                                width: 60,
                              ),


                              SizedBox(height: 20,),

                              Text("Sales",
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


                SizedBox(height: 20,),

              ],
            ),
          ),
          
        ),
        
      ),
    );
  }
}
