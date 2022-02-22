import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/data_model/worknote_offline_model.dart';
import 'package:hrandsells/database/dbhelperworkNote.dart';

class AbsentApprovalApply_page extends StatefulWidget {
  const AbsentApprovalApply_page({Key? key}) : super(key: key);

  @override
  _AbsentApprovalApply_pageState createState() => _AbsentApprovalApply_pageState();
}

class _AbsentApprovalApply_pageState extends State<AbsentApprovalApply_page> {

  DateTime now = DateTime.now();

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
                )
            ),


          ),





          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20,bottom: 20),
              child: Container(
                height: MediaQuery.of(context).size.height/1.5,
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
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

                      SizedBox(height: 10,),

                      Text('$now',
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),


                      Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 100,
                            child: const Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: " ",
                                    border: InputBorder.none,
                                  ),

                                )
                            ),
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.purple,
                                  width: 1),
                              borderRadius: BorderRadius.circular(5),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            left: 40,
                            top: 12,
                            child: Container(
                              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                              color: Colors.white,
                              child: Text(
                                'Write Justification',
                                style: TextStyle(color: Color(0xffF17A0D), fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20,),

                      Center(
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color(0xffF17A0D),
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
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsentApprovalApply_page()));
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

        ),

      ),
    );
  }
}
