// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hrandsells/data_model/leave_tour_model.dart';
// import 'package:hrandsells/data_model/worknote_offline_model.dart';
// import 'package:hrandsells/database/dbhelperworkNote.dart';
// import 'package:intl/intl.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:syncfusion_flutter_core/theme.dart';
// import 'package:http/http.dart' as http;
//
//
// class LeaveApply_page extends StatefulWidget {
//   const LeaveApply_page({Key? key}) : super(key: key);
//
//   @override
//   _LeaveApply_pageState createState() => _LeaveApply_pageState();
// }
//
// class _LeaveApply_pageState extends State<LeaveApply_page> {
//
//   // DateTime now = DateTime.now();
//   DateTime now = DateTime.now();
//   String dropdownValue = 'Pick';
//   String _value = '' ;
//   String _value1 = '' ;
//   String taskAssign = '';
//   String contact = '';
//   String reason = '';
//
//
//   void _showDatePicker() async {
//     DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: new DateTime.now(),
//         firstDate: new DateTime(2021),
//         lastDate: new DateTime(2023)
//     );
//     if(picked != null) setState(() => _value = picked.toString());
//   }
//
//   void _showDatePicker1() async {
//     DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: new DateTime.now(),
//         firstDate: new DateTime(2021),
//         lastDate: new DateTime(2023)
//     );
//     if(picked != null) setState(() => _value1 = picked.toString());
//   }
//
//   //
//   // late DatabaseHandlerworkNote handler;
//   //
//   // void initState() {
//   //   super.initState();
//   //   this.handler = DatabaseHandlerworkNote();
//   //   this.handler.initializeDB().whenComplete(() async {
//   //     await this.addUsers();
//   //     setState(() {});
//   //   });
//   // }
//   //
//   // Future<int> addUsers() async {
//   //   WorkNoteOfflineModel application = WorkNoteOfflineModel(leaveType: dropdownValue, fromDate: _value, toDate: _value1, contactNumber: contact, taskAssigntTo: taskAssign, reasonApplicaiton: reason, createdAt: "$now");
//   //   //LeaveTourOfflineModel secondUser = LeaveTourOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
//   //   List<WorkNoteOfflineModel> listOfApplication = [application];
//   //   return await this.handler.insertApplication(listOfApplication);
//   // }
//
//
//   late LeaveTourModel _dataModel;
//
//
//
//   submitData(String dvalue, String value, String value1,contact,taskAssign,reason) async{
//
//
//     try{
//       var response= await http.post(Uri.parse('https://flutterapi.brotherdev.com/api.php'),body:
//       {"leaveType": dvalue,
//         "value": value,
//         "value1": value1,
//         "contact": contact,
//         "taskAssign": taskAssign,
//         "reason": reason
//       });
//
//     }catch(er){
//       print(er);
//     }
//
//     // var response= await http.post(Uri.parse('https://flutterapi.brotherdev.com/api.php'),body:
//     // {"leaveType": dvalue,
//     //   "value": value,
//     //   "value1": value1,
//     //   "contact": contact,
//     //   "taskAssign": taskAssign,
//     //   "reason": reason
//     // });
//     // var data = response.body;
//     // // print (data);
//     // print ("ii"+response.body);
//     // //print(dvalue);
//     //
//     // // if(response.statusCode==201){
//     // //   String responseString= response.body;
//     // //   dataModelFromJson(responseString);
//     // // }
//     // //else return null;
//   }
//
//
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
//             backgroundColor: Color(0xFF8CA6DB),
//             title: Center(
//                 child: Text("Leave and Tour Apply",
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.openSans(
//                     fontSize: 20,
//                   ),
//                 )
//             ),
//
//           ),
//
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 15.0,top: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                   Text("Mohammad Shariful Alam Shabuj",
//                     style: GoogleFonts.openSans(
//                       fontSize: 20,
//                       color: Colors.grey,
//                     ),
//                   ),
//
//                   Text("1296",
//                     style: GoogleFonts.openSans(
//                       fontSize: 20,
//                       color: Colors.grey,
//                     ),
//                   ),
//
//                   Text('$now',
//                     style: GoogleFonts.openSans(
//                       fontSize: 15,
//                       color: Colors.grey,
//                     ),
//                   ),
//
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 70,
//                         child: Center(
//                           child: DropdownButton<String>(
//                             value: dropdownValue,
//                             icon: const Icon(Icons.keyboard_arrow_down),
//                             elevation: 16,
//                             style: const TextStyle(color: Colors.grey,fontSize: 15),
//                             underline: Container(
//                               height: 2,
//                               color: Colors.white,
//                             ),
//                             onChanged: (String? newValue) {
//                               setState(() {
//                                 dropdownValue = newValue!;
//                               });
//                             },
//                             items: <String>['Pick', 'Annual Leave', 'Leave without pay ', 'Replacement Leave','special leave','Tour','Work from home']
//                                 .map<DropdownMenuItem<String>>((String value) {
//                               return DropdownMenuItem<String>(
//                                 value: value,
//                                 child: Text(value),
//                               );
//                             }).toList(),
//                           ),
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                           left: 40,
//                           top: 12,
//                           child: Container(
//                             padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                             color: Color(0xfffafafa),
//                             child: Text(
//                               'Leave Type',
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Color(0xff8CA6DB)
//                                 ),
//                             ),
//                           ),
//                       ),
//                     ],
//                   ),
//
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 100,
//                         child: Center(
//                             child: Row(
//                               children: [
//                                 FlatButton(
//                                   color: Color(0xfffafafa),
//                                     onPressed: () {
//                                       _showDatePicker();
//                                     },
//                                     child: Icon(Icons.calendar_today_sharp),
//                                 ),
//
//                                 SizedBox(width: 10,),
//
//                                 Text("$_value",
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//
//                               ],
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Form Date',
//                               style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xff8CA6DB)
//                               ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 100,
//                         child: Center(
//                             child: Row(
//                               children: [
//                                 FlatButton(
//                                   color: Color(0xfffafafa),
//                                   onPressed: () {
//                                     _showDatePicker1();
//                                   },
//                                   child: Icon(Icons.calendar_today_sharp),
//                                 ),
//
//                                 SizedBox(width: 10,),
//
//                                 Text("$_value1",
//                                   style: GoogleFonts.openSans(
//                                     fontSize: 15,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//
//                               ],
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'To Date',
//                             style: GoogleFonts.openSans(
//                                 fontSize: 15,
//                                 color: Color(0xff8CA6DB)
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 70,
//                         child: Center(
//                             child: TextField(
//                               onChanged: (input){
//                                 contact = input;
//                               },
//                               decoration: InputDecoration(
//                                   hintText: " ",
//                                 border: InputBorder.none,
//                               ),
//                               keyboardType: TextInputType.number,
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Contact no during leave',
//                               style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xff8CA6DB)
//                         ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 70,
//                         child: Center(
//                             child: TextField(
//                               onChanged: (input){
//                                 taskAssign = input;
//                               },
//                               decoration: InputDecoration(
//                                   hintText: " ",
//                                 border: InputBorder.none,
//                               ),
//                             )
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Task Assign to',
//                             style: GoogleFonts.openSans(
//                                 fontSize: 15,
//                                 color: Color(0xff8CA6DB)
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         height: 100,
//                         child: Center(
//                             child: TextField(
//                               onChanged: (input){
//                                 reason = input;
//                               },
//                               decoration: InputDecoration(
//                                   hintText: " ",
//                                 border: InputBorder.none,
//                               ),
//
//                             ),
//                         ),
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                         padding: EdgeInsets.only(bottom: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                               color: Colors.black,
//                               width: 1),
//                           borderRadius: BorderRadius.circular(5),
//                           shape: BoxShape.rectangle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 40,
//                         top: 12,
//                         child: Container(
//                           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                           color: Color(0xfffafafa),
//                           child: Text(
//                             'Reason for Application',
//                             style: GoogleFonts.openSans(
//                                 fontSize: 15,
//                                 color: Color(0xff8CA6DB)
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Center(
//                     child: Container(
//                       height: 40,
//                       width: MediaQuery.of(context).size.width/1.2,
//                       decoration: BoxDecoration(
//                         color: Color(0xff8CA6DB),
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
//                         onPressed: ()async{
//                           //submitData(dvalue, value, value1, contact, taskAssign, reason)
//                           // print(dropdownValue);
//                           // print(_value);
//                           // print(_value1);
//                           //print(contact);
//                           // print(taskAssign);
//                           // print(reason);
//                           //addUsers();
//
//                           LeaveTourModel data= await submitData(dropdownValue, _value,_value1,contact,taskAssign,reason);
//
//                           setState(() {
//                             _dataModel = data;
//                           });
//
//                         },
//                         child: Text("Apply",
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.openSans(
//                             fontSize: 18,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//
//                   SizedBox(height: 20,),
//
//                 ],
//               ),
//             ),
//           ),
//
//         ),
//       ),
//     );
//   }
// }




import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/data_model/leave_tour_model.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class LeaveApply_page extends StatefulWidget {
  const LeaveApply_page({Key? key}) : super(key: key);

  @override
  _LeaveApply_pageState createState() => _LeaveApply_pageState();
}

class _LeaveApply_pageState extends State<LeaveApply_page> {

  // DateTime now = DateTime.now();
  DateTime now = DateTime.now();
  String dropdownValue = 'Pick';
  String _value = '' ;
  String _value1 = '' ;
  String taskAssign = '';
  String contact = '';
  String reason = '';
  String date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  String status = 'Waiting for Approval';


  void _showDatePicker() async {
    DateTime? picked = await showDatePicker(
        context: context,
        //initialDate: new DateTime.now(),
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2023)
    );
    if (picked != null && picked != date) {
      setState(() {
        date = picked.toString();
        String Onlydate = new DateFormat("dd-MM-yyyy").format(picked);

        _value = '$Onlydate';


      });
    }
  }

  void _showDatePicker1() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2023),
    );
    // if(picked != null) setState(() => _value1 = picked.toString());

    if (picked != null && picked != date) {
      setState(() {
        date = picked.toString();
        String Onlydate = new DateFormat("dd-MM-yyyy").format(picked);

        _value1 = '$Onlydate';


      });
    }

  }

  //
  // late DatabaseHandlerworkNote handler;
  //
  // void initState() {
  //   super.initState();
  //   this.handler = DatabaseHandlerworkNote();
  //   this.handler.initializeDB().whenComplete(() async {
  //     await this.addUsers();
  //     setState(() {});
  //   });
  // }
  //
  // Future<int> addUsers() async {
  //   WorkNoteOfflineModel application = WorkNoteOfflineModel(leaveType: dropdownValue, fromDate: _value, toDate: _value1, contactNumber: contact, taskAssigntTo: taskAssign, reasonApplicaiton: reason, createdAt: "$now");
  //   //LeaveTourOfflineModel secondUser = LeaveTourOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
  //   List<WorkNoteOfflineModel> listOfApplication = [application];
  //   return await this.handler.insertApplication(listOfApplication);
  // }


  late LeaveTourModel _dataModel;



  submitData(String dvalue, String value, String value1,contact,taskAssign,reason) async{

    print(dvalue);
    print(value);
    print(value1);
    print(contact);
    print(taskAssign);
    print(reason);
    //print(status1);


    var response= await http.post(Uri.parse('https://flutterapi.brotherdev.com/api.php'),body:
    jsonEncode(<String, String>{
      "leaveType": dvalue,
      "fromDate": value,
      "toDate": value1,
      "contactNumber": contact,
      "taskAssigntTo": taskAssign,
      "reasonApplicaiton": reason,
      "aprovalstatus": 'Waiting for Approval'
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
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF8CA6DB),
            title: Center(
                child: Text("Leave and Tour Apply",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                  ),
                )
            ),

          ),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Mohammad Shariful Alam Shabuj",
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),

                  Text("1296",
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),

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
                        height: 70,
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            elevation: 16,
                            style: const TextStyle(color: Colors.grey,fontSize: 15),
                            underline: Container(
                              height: 2,
                              color: Colors.white,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Pick', 'Annual Leave', 'Leave without pay ', 'Replacement Leave','special leave','Tour','Work from home']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
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
                            'Leave Type',
                            style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Color(0xff8CA6DB)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


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
                                    _showDatePicker();
                                  },
                                  child: Icon(Icons.calendar_today_sharp),
                                ),

                                SizedBox(width: 10,),

                                Text("$_value",
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
                              color: Colors.black,
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
                                    _showDatePicker1();
                                  },
                                  child: Icon(Icons.calendar_today_sharp),
                                ),

                                SizedBox(width: 10,),

                                Text("$_value1",
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
                              color: Colors.black,
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

                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Center(
                            child: TextField(
                              onChanged: (input){
                                contact = input;
                              },
                              decoration: InputDecoration(
                                hintText: " ",
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.number,
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
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
                            'Contact no during leave',
                            style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Color(0xff8CA6DB)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 70,
                        child: Center(
                            child: TextField(
                              onChanged: (input){
                                taskAssign = input;
                              },
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
                              color: Colors.black,
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
                            'Task Assign to',
                            style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Color(0xff8CA6DB)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Center(
                          child: TextField(
                            onChanged: (input){
                              reason = input;
                            },
                            decoration: InputDecoration(
                              hintText: " ",
                              border: InputBorder.none,
                            ),

                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
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
                            'Reason for Application',
                            style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Color(0xff8CA6DB)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

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

                        onPressed: (){
                          //submitData(dvalue, value, value1, contact, taskAssign, reason)
                          // print(dropdownValue);
                          // print(_value);
                          // print(_value1);
                          //print(contact);
                          // print(taskAssign);
                          print(status);
                          //addUsers();

                          //LeaveTourModel data= await
                          submitData(dropdownValue, _value,_value1,contact,taskAssign,reason);
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave_page()));
                          Navigator.pop(context);
                          // setState(() {
                          //   //_dataModel = data;
                          // });

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

                  SizedBox(height: 20,),

                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
