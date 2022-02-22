import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class AttendanceField extends StatefulWidget {
  const AttendanceField({Key? key}) : super(key: key);

  @override
  _AttendanceFieldState createState() => _AttendanceFieldState();
}

class _AttendanceFieldState extends State<AttendanceField> {

  DateTime now = DateTime.now();
  String dropdownValue = 'Pick';
  String _fromDate = '' ;
  String _toDate = '' ;
  var initialDate;
  var firstDate;
  var lastDate;

  void _showFromDatePicker() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2023)
    );

    if(picked != null) setState(() => _fromDate = picked.toString());
  }


  void _showToDatePicker() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2023)
    );


    if(picked != null) setState(() => _toDate = picked.toString());
  }




  submitData( invalue, outvalue, inlocation,outlocation) async{

    print(invalue);
    print(outvalue);
    print(inlocation);
    print(outlocation);



    var response= await http.post(Uri.parse('http://flutterapi.brotherdev.com/Attendence/attendence.php'),body:
    jsonEncode(<String, String>{
      "intime": invalue,
      "outtime": outvalue,
      "inlocation": inlocation,
      "outlocation": outlocation,
    })
    );
    var data = response.body;
    // print (data);
    print ("ii"+response.body);
    //print(dvalue);

    // if(response.statusCode==201){
    //   String responseString= response.body;
    //   leaveTourModelFromJson(responseString);
    // }
    // else return null;
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8CA6DB),
        title: Center(
            child: Text("Attendance",
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 20,
              ),
            )
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0,top: 30),
          child: Column(
            children: <Widget>[

              //from date View
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Center(
                        child: Row(
                          children: [
                            FlatButton(
                              color: Color(0xfffafafa),
                              onPressed: () {
                                _showFromDatePicker();
                              },
                              child: Icon(Icons.calendar_today_sharp),
                            ),

                            SizedBox(width: 10,),

                            Text(_fromDate,
                              style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
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
                      color: Color(0xfffafafa),
                      child: Text(
                        'Form Date',
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            color: Color(0xff8CA6DB)
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //to date view
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: Center(
                        child: Row(
                          children: [
                            FlatButton(
                              color: Color(0xfffafafa),
                              onPressed: () {
                                _showToDatePicker();
                              },
                              child: Icon(Icons.calendar_today_sharp),
                            ),

                            SizedBox(width: 10,),

                            Text(_toDate,
                              style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),

                          ],
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
                      color: Color(0xfffafafa),
                      child: Text(
                        'To Date',
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            color: Color(0xff8CA6DB)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //FlatButton or TextButton Container
              Center(
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    color: Color(0xff8CA6DB),
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

                    onPressed: ()async {
                      //something will change
                    },
                    child: Text("View report",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),



            ],
          ),
        ),
      ),
    );
  }
}