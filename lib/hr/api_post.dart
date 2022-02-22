// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hrandsells/data_model/leave_tour_model.dart';
// import 'package:http/http.dart' as http;
//
// import 'leave_tour_apply.dart';
//
//
// Future<List<LeaveTourModel>> fetchPost() async {
//   final response =
//   await http.get(Uri.parse('http://flutterapi.brotherdev.com/api.php'));
//
//   if (response.statusCode == 200) {
//     final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//     return parsed.map<LeaveTourModel>((json) => LeaveTourModel.fromJson(json)).toList();
//   } else {
//     throw Exception('Failed to load album');
//   }
// }
//
//
// class Api_post_page extends StatefulWidget {
//   @override
//   _Api_post_pageState createState() => _Api_post_pageState();
// }
//
// class _Api_post_pageState extends State<Api_post_page> {
//
//
//   DateTime now = DateTime.now();
//   String dropdownValue = 'Pick';
//   String _value = '' ;
//   String _value1 = '' ;
//   String taskAssign = '';
//   String contact = '';
//   String task = '';
//   String reasonApplication='';
//
//
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
//   Future<List<LeaveTourModel>>? futurePost;
//
//   late LeaveTourModel _dataModel;
//
//
//   submitData(String name, String job) async{
//     var response= await http.post(Uri.https('reqres.in','api/users'),body:
//     {"name": name,
//       'job':job});
//     var data = response.body;
//     print (data);
//
//     if(response.statusCode==201){
//       String responseString= response.body;
//       dataModelFromJson(responseString);
//     }
//     //else return null;
//   }
//
//
//   @override
//   void initState() {
//     super.initState();
//     futurePost = fetchPost();
//
//     fetchPost().whenComplete(() => futurePost);
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primaryColor: Colors.lightBlueAccent,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color(0xFF8CA6DB),
//           title: Center(
//               child: Text("Leave and Tour",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.openSans(
//                   fontSize: 20,
//                 ),
//               )
//           ),
//
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0,right: 16,top: 12,bottom: 12),
//               child: GestureDetector(
//                 onTap: (){
//                   print("Pressed");
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveApply_page()));
//                 },
//                 child: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                     ),
//                     child: Icon(Icons.add)
//                 ),
//               ),
//             ),
//           ],
//
//         ),
//
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 15.0,top: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 Text("Mohammad Shariful Alam Shabuj",
//                   style: GoogleFonts.openSans(
//                     fontSize: 20,
//                     color: Colors.grey,
//                   ),
//                 ),
//
//                 Text("1296",
//                   style: GoogleFonts.openSans(
//                     fontSize: 20,
//                     color: Colors.grey,
//                   ),
//                 ),
//
//                 Text('$now',
//                   style: GoogleFonts.openSans(
//                     fontSize: 15,
//                     color: Colors.grey,
//                   ),
//                 ),
//
//
//                 Stack(
//                   children: <Widget>[
//                     Container(
//                       width: double.infinity,
//                       height: 70,
//                       child: Center(
//                         child: DropdownButton<String>(
//                           value: dropdownValue,
//                           icon: const Icon(Icons.keyboard_arrow_down),
//                           elevation: 16,
//                           style: const TextStyle(color: Colors.grey,fontSize: 15),
//                           underline: Container(
//                             height: 2,
//                             color: Colors.white,
//                           ),
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               dropdownValue = newValue!;
//                             });
//                           },
//                           items: <String>['Pick', 'Annual Leave', 'Leave without pay ', 'Replacement Leave','special leave','Tour','Work from home']
//                               .map<DropdownMenuItem<String>>((String value) {
//                             return DropdownMenuItem<String>(
//                               value: value,
//                               child: Text(value),
//                             );
//                           }).toList(),
//                         ),
//                       ),
//                       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                       padding: EdgeInsets.only(bottom: 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.purple,
//                             width: 1),
//                         borderRadius: BorderRadius.circular(5),
//                         shape: BoxShape.rectangle,
//                       ),
//                     ),
//                     Positioned(
//                       left: 40,
//                       top: 12,
//                       child: Container(
//                         padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                         color: Color(0xfffafafa),
//                         child: Text(
//                           'Leave Type',
//                           style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xffF17A0D)
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//
//                 Stack(
//                   children: <Widget>[
//                     Container(
//                       width: double.infinity,
//                       height: 100,
//                       child: Center(
//                           child: Row(
//                             children: [
//                               FlatButton(
//                                 color: Color(0xfffafafa),
//                                 onPressed: () {
//                                   _showDatePicker();
//                                 },
//                                 child: Icon(Icons.calendar_today_sharp),
//                               ),
//
//                               SizedBox(width: 10,),
//
//                               Text("$_value",
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//
//                             ],
//                           )
//                       ),
//                       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                       padding: EdgeInsets.only(bottom: 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.purple,
//                             width: 1),
//                         borderRadius: BorderRadius.circular(5),
//                         shape: BoxShape.rectangle,
//                       ),
//                     ),
//                     Positioned(
//                       left: 40,
//                       top: 12,
//                       child: Container(
//                         padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                         color: Color(0xfffafafa),
//                         child: Text(
//                           'Form Date',
//                           style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xffF17A0D)
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//
//                 Stack(
//                   children: <Widget>[
//                     Container(
//                       width: double.infinity,
//                       height: 100,
//                       child: Center(
//                           child: Row(
//                             children: [
//                               FlatButton(
//                                 color: Color(0xfffafafa),
//                                 onPressed: () {
//                                   _showDatePicker1();
//                                 },
//                                 child: Icon(Icons.calendar_today_sharp),
//                               ),
//
//                               SizedBox(width: 10,),
//
//                               Text("$_value1",
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//
//                             ],
//                           )
//                       ),
//                       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                       padding: EdgeInsets.only(bottom: 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.purple,
//                             width: 1),
//                         borderRadius: BorderRadius.circular(5),
//                         shape: BoxShape.rectangle,
//                       ),
//                     ),
//                     Positioned(
//                       left: 40,
//                       top: 12,
//                       child: Container(
//                         padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                         color: Color(0xfffafafa),
//                         child: Text(
//                           'To Date',
//                           style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xffF17A0D)
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 Stack(
//                   children: <Widget>[
//                     Container(
//                       width: double.infinity,
//                       height: 70,
//                       child: Center(
//                           child: TextField(
//                             decoration: InputDecoration(
//                               hintText: " ",
//                               border: InputBorder.none,
//                             ),
//                             keyboardType: TextInputType.number,
//                             onChanged: (input){
//                               contact = input;
//                             },
//                           )
//                       ),
//                       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                       padding: EdgeInsets.only(bottom: 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.purple,
//                             width: 1),
//                         borderRadius: BorderRadius.circular(5),
//                         shape: BoxShape.rectangle,
//                       ),
//                     ),
//                     Positioned(
//                       left: 40,
//                       top: 12,
//                       child: Container(
//                         padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                         color: Color(0xfffafafa),
//                         child: Text(
//                           'Contact no during leave',
//                           style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xffF17A0D)
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 Stack(
//                   children: <Widget>[
//                     Container(
//                       width: double.infinity,
//                       height: 70,
//                       child:  Center(
//                           child: TextField(
//                             decoration: InputDecoration(
//                               hintText: " ",
//                               border: InputBorder.none,
//                             ),
//                             onChanged: (input){
//                               taskAssign = input;
//                             },
//                           )
//                       ),
//                       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                       padding: EdgeInsets.only(bottom: 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.purple,
//                             width: 1),
//                         borderRadius: BorderRadius.circular(5),
//                         shape: BoxShape.rectangle,
//                       ),
//                     ),
//                     Positioned(
//                       left: 40,
//                       top: 12,
//                       child: Container(
//                         padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                         color: Color(0xfffafafa),
//                         child: Text(
//                           'Task Assign to',
//                           style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xffF17A0D)
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 Stack(
//                   children: <Widget>[
//                     Container(
//                       width: double.infinity,
//                       height: 100,
//                       child: Center(
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: " ",
//                             border: InputBorder.none,
//                           ),
//                           onChanged: (input){
//                             reasonApplication = input;
//                           },
//                         ),
//                       ),
//                       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
//                       padding: EdgeInsets.only(bottom: 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             color: Colors.purple,
//                             width: 1),
//                         borderRadius: BorderRadius.circular(5),
//                         shape: BoxShape.rectangle,
//                       ),
//                     ),
//                     Positioned(
//                       left: 40,
//                       top: 12,
//                       child: Container(
//                         padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//                         color: Color(0xfffafafa),
//                         child: Text(
//                           'Reason for Application',
//                           style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Color(0xffF17A0D)
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 Center(
//                   child: Container(
//                     height: 40,
//                     width: MediaQuery.of(context).size.width/1.2,
//                     decoration: BoxDecoration(
//                       color: Color(0xffF17A0D),
//                       //border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 5,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: FlatButton(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0)),
//
//                       onPressed: () async {
//
//
//
//
//                         LeaveTourModel data= await submitData(dropdownValue,_value,_value1,taskAssign,contact,task,reasonApplication);
//
//                         setState(() {
//                           _dataModel = data;
//                         });
//                       },
//                       child: Text("Apply",
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.openSans(
//                           fontSize: 18,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 SizedBox(height: 20,),
//
//               ],
//             ),
//           ),
//         ),
//
//       ),
//     );
//   }
// }