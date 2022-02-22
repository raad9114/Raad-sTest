import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/hr/absent_approval_apply.dart';
import 'package:hrandsells/hr/leave_tour_apply.dart';

class AbsentApproval_page extends StatefulWidget {
  const AbsentApproval_page({Key? key}) : super(key: key);

  @override
  _AbsentApproval_pageState createState() => _AbsentApproval_pageState();
}

class _AbsentApproval_pageState extends State<AbsentApproval_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Color(0xFF8CA6DB),
            title: Center(
                child: Text("Absent Approval",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                  ),
                ),
            ),


          ),
          body: ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.width/2.5,
                          width: MediaQuery.of(context).size.width,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,top: 15),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFfd8745),
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

                                  child: Text("Absent",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),

                                ),
                              ),

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0,left: 20),
                                    child: Column(
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Annual Leave",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.openSans(
                                            fontSize: 20,
                                            color: Colors.grey,
                                          ),
                                        ),

                                        Text("March 27 - ",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.openSans(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),

                                        Text("March 28, 2021",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.openSans(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                  SizedBox(width: 80,),

                                  Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xff5689d3),
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
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApprovalApply_page()));
                                      },
                                      child: Text("Apply",
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

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}




