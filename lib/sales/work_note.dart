// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hrandsells/data_model/worknote_offline_model.dart';
// import 'package:hrandsells/database/dbhelperworkNote.dart';
//
// class WorkNote_Page extends StatefulWidget {
//   const WorkNote_Page({Key? key}) : super(key: key);
//
//   @override
//   _WorkNote_PageState createState() => _WorkNote_PageState();
// }
//
// class _WorkNote_PageState extends State<WorkNote_Page> {
//
//
//   String addworkNote = '';
//
//   late DatabaseHandlerworkNote handler;
//
//   void initState() {
//     super.initState();
//     this.handler = DatabaseHandlerworkNote();
//     // this.handler.initializeDB().whenComplete(() async {
//     //   await this.addUsers();
//     //   setState(() {});
//     // });
//   }
//
//   Future<int> addUsers() async {
//
//     //print(snapshot.data?.length);
//
//     WorkNoteOfflineModel firstUser = WorkNoteOfflineModel(workNote: addworkNote);
//     //WorkNoteOfflineModel secondUser = WorkNoteOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
//     List<WorkNoteOfflineModel> listOfApplication = [firstUser];
//     return await this.handler.insertApplication(listOfApplication);
//   }
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
//             title: Text("Work Note",
//               textAlign: TextAlign.center,
//               style: GoogleFonts.openSans(
//                 fontSize: 20,
//               ),
//             ),
//           ),
//
//           // body: FutureBuilder(
//           //   future: this.handler.retrieveUsers(),
//           //   builder: (BuildContext context, AsyncSnapshot<List<WorkNoteOfflineModel>> snapshot) {
//           //     if (snapshot.hasData) {
//           //       return ListView.builder(
//           //         itemCount: snapshot.data?.length,
//           //         itemBuilder: (BuildContext context, int index) {
//           //           return Dismissible(
//           //             direction: DismissDirection.endToStart,
//           //             background: Container(
//           //               color: Colors.red,
//           //               alignment: Alignment.centerRight,
//           //               padding: EdgeInsets.symmetric(horizontal: 10.0),
//           //               child: Icon(Icons.delete_forever),
//           //             ),
//           //             key: ValueKey<int>(snapshot.data![index].id!),
//           //             onDismissed: (DismissDirection direction) async {
//           //               await this.handler.deleteUser(snapshot.data![index].id!);
//           //               setState(() {
//           //                 snapshot.data!.remove(snapshot.data![index]);
//           //               });
//           //             },
//           //             child: Card(
//           //                 child: ListTile(
//           //                   contentPadding: EdgeInsets.all(8.0),
//           //                   title: Text(snapshot.data![index].reasonApplicaiton),
//           //                   subtitle: Text(snapshot.data![index].contactNumber),
//           //                 )),
//           //           );
//           //         },
//           //       );
//           //     } else {
//           //       return Center(child: CircularProgressIndicator());
//           //     }
//           //   },
//           // ),
//
//
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
//                   child: Container(
//                     height: MediaQuery.of(context).size.width/2.5,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       // color: ispressed ? Colors.white : Colors.grey,
//                       //border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(20),
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
//                       onPressed: (){
//                         showDialog(context: context, builder: (BuildContext context) {
//                           return  AlertDialog(
//                             title: const Text("New task"),
//                             content:  TextField(
//                               decoration: InputDecoration(
//                                 hintText: " ",
//                                 //border: InputBorder.none,
//                               ),
//                               //keyboardType: TextInputType.number,
//                               onChanged: (input){
//                                 addworkNote = input;
//                               },
//                             ),
//                             actions: [
//                               FlatButton(
//                                 color: Color(0xFF8CA6DB),
//                                 onPressed: (){
//                                   //Navigator.pop(context);
//                                   print(addworkNote);
//                                   addUsers();
//                                   Navigator.pop(context);
//                                 },
//                                 child: Text("Add"),
//                               ),
//                             ],
//                             scrollable: true,
//                           );
//                         });
//                       },
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//
//                           SizedBox(height: 20,),
//
//                           Icon(Icons.add,
//                             size: 50,
//                             color: Colors.grey,
//                           ),
//
//                           Text("Add New",
//                             textAlign: TextAlign.center,
//                             style: GoogleFonts.openSans(
//                               fontSize: 15,
//                               color: Colors.grey,
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
//                   child: Container(
//                     height: MediaQuery.of(context).size.width/2.5,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       // color: ispressed ? Colors.white : Colors.grey,
//                       //border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 5,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//
//
//
//                         Icon(FontAwesomeIcons.clipboard,
//                           size: 50,
//                           color: Colors.grey,
//                         ),
//
//                         SizedBox(height: 20,),
//
//                         Text("Report",
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.openSans(
//                             fontSize: 15,
//                             color: Colors.grey,
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20,left: 30.0,right: 30.0, bottom: 30.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: MediaQuery.of(context).size.width/4,
//                         width: MediaQuery.of(context).size.width/4,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           //border: Border.all(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 1,
//                               blurRadius: 5,
//                               offset: Offset(0, 3), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: FlatButton(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0)),
//
//                           onPressed: (){
//
//                           },
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text("Today",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//
//                               SizedBox(height: 10,),
//
//                               Text("0",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//
//                       SizedBox(width: 10,),
//
//                       Container(
//                         height: MediaQuery.of(context).size.width/4,
//                         width: MediaQuery.of(context).size.width/4,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           //border: Border.all(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 1,
//                               blurRadius: 5,
//                               offset: Offset(0, 3), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: FlatButton(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0)),
//
//                           onPressed: (){
//
//                           },
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text("Assigned",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//
//                               SizedBox(height: 10,),
//
//                               Text("0",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//
//                       SizedBox(width: 10,),
//
//                       Container(
//                         height: MediaQuery.of(context).size.width/4,
//                         width: MediaQuery.of(context).size.width/4,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           //border: Border.all(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 1,
//                               blurRadius: 5,
//                               offset: Offset(0, 3), // changes position of shadow
//                             ),
//                           ],
//                         ),
//                         child: FlatButton(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0)),
//
//                           onPressed: (){
//
//                           },
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text("This Month",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//
//                               SizedBox(height: 10,),
//
//                               Text("0",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 15,
//                                   color: Colors.grey,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//
//
//                     ],
//                   ),
//                 ),
//
//
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0, right: 10),
//                   child: Container(
//                     height: 500,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.white,
//                     child: FutureBuilder(
//                       future: this.handler.retrieveUsers(),
//                       builder: (BuildContext context, AsyncSnapshot<List<WorkNoteOfflineModel>> snapshot) {
//                         if (snapshot.hasData) {
//                           return ListView.builder(
//                             itemCount: snapshot.data?.length,
//                             itemBuilder: (BuildContext context, int index) {
//                               return Dismissible(
//                                 direction: DismissDirection.endToStart,
//                                 background: Container(
//                                   color: Colors.red,
//                                   alignment: Alignment.centerRight,
//                                   padding: EdgeInsets.symmetric(horizontal: 10.0),
//                                   child: Icon(Icons.delete_forever),
//                                 ),
//                                 key: ValueKey<int>(snapshot.data![index].id!),
//                                 onDismissed: (DismissDirection direction) async {
//                                   await this.handler.deleteUser(snapshot.data![index].id!);
//                                   setState(() {
//                                     snapshot.data!.remove(snapshot.data![index]);
//                                   });
//                                 },
//                                 child: Card(
//                                   color: Colors.grey,
//                                     child: ListTile(
//                                       contentPadding: EdgeInsets.all(8.0),
//                                       title: Text(snapshot.data![index].workNote),
//                                       //subtitle: Text(snapshot.data![index].contactNumber),
//                                     )),
//                               );
//                             },
//                           );
//                         } else {
//                           return Center(child: CircularProgressIndicator());
//                         }
//                       },
//                     ),
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/data_model/worknote_offline_model.dart';
import 'package:hrandsells/database/dbhelperworkNote.dart';

class WorkNote_Page extends StatefulWidget {
  const WorkNote_Page({Key? key}) : super(key: key);

  @override
  _WorkNote_PageState createState() => _WorkNote_PageState();
}

class _WorkNote_PageState extends State<WorkNote_Page> {


  String addworkNote = '';

  late DatabaseHandlerworkNote handler;

  void initState() {
    super.initState();
    this.handler = DatabaseHandlerworkNote();
    // this.handler.initializeDB().whenComplete(() async {
    //   await this.addUsers();
    //   setState(() {});
    // });
  }

  Future<int> addUsers() async {

    //print(snapshot.data?.length);

    WorkNoteOfflineModel firstUser = WorkNoteOfflineModel(workNote: addworkNote);
    //WorkNoteOfflineModel secondUser = WorkNoteOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
    List<WorkNoteOfflineModel> listOfApplication = [firstUser];
    return await this.handler.insertApplication(listOfApplication);
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
            title: Text("Work Note",
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 20,
              ),
            ),
          ),



          body: SingleChildScrollView(
            child: FutureBuilder(
              future: this.handler.retrieveUsers(),
              builder: (BuildContext context, AsyncSnapshot<List<WorkNoteOfflineModel>> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.width/2.5,
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
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),

                            onPressed: (){
                              showDialog(context: context, builder: (BuildContext context) {
                                return  AlertDialog(
                                  title: const Text("New task"),
                                  content:  TextField(
                                    decoration: InputDecoration(
                                      hintText: " ",
                                      //border: InputBorder.none,
                                    ),
                                    //keyboardType: TextInputType.number,
                                    onChanged: (input){
                                      addworkNote = input;
                                    },
                                  ),
                                  actions: [
                                    FlatButton(
                                      color: Color(0xFF8CA6DB),
                                      onPressed: (){
                                        //Navigator.pop(context);
                                        print(addworkNote);

                                        addUsers();
                                        Navigator.pop(context);
                                      },
                                      child: Text("Add"),
                                    ),
                                  ],
                                  scrollable: true,
                                );
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                SizedBox(height: 20,),

                                Icon(Icons.add,
                                  size: 50,
                                  color: Colors.grey,
                                ),

                                Text("Add New",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.width/2.5,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [



                              Icon(FontAwesomeIcons.clipboard,
                                size: 50,
                                color: Colors.grey,
                              ),

                              SizedBox(height: 20,),

                              Text("Report",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 30.0,right: 30.0, bottom: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width/4,
                              width: MediaQuery.of(context).size.width/4,
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
                                    Text("Today",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),

                                    SizedBox(height: 10,),

                                    Text((snapshot.data?.length).toString(),
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

                            SizedBox(width: 10,),

                            Container(
                              height: MediaQuery.of(context).size.width/4,
                              width: MediaQuery.of(context).size.width/4,
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
                                    Text("Assigned",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),

                                    SizedBox(height: 10,),

                                    Text("0",
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

                            SizedBox(width: 10,),

                            Container(
                              height: MediaQuery.of(context).size.width/4,
                              width: MediaQuery.of(context).size.width/4,
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
                                    Text("This Month",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),

                                    SizedBox(height: 10,),

                                    Text("0",
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
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height/2,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: FutureBuilder(
                            future: this.handler.retrieveUsers(),
                            builder: (BuildContext context, AsyncSnapshot<List<WorkNoteOfflineModel>> snapshot) {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                  itemCount: snapshot.data?.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Dismissible(
                                      direction: DismissDirection.endToStart,
                                      background: Container(
                                        color: Colors.red,
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                                        child: Icon(Icons.delete_forever),
                                      ),
                                      key: ValueKey<int>(snapshot.data![index].id!),
                                      onDismissed: (DismissDirection direction) async {
                                        await this.handler.deleteUser(snapshot.data![index].id!);
                                        setState(() {
                                          snapshot.data!.remove(snapshot.data![index]);
                                        });
                                      },
                                      child: Card(
                                          color: Colors.grey,
                                          child: ListTile(
                                            contentPadding: EdgeInsets.all(8.0),
                                            title: Text(snapshot.data![index].workNote),
                                            //subtitle: Text(snapshot.data![index].contactNumber),
                                          )),
                                    );
                                  },
                                );
                              } else {
                                return Center(child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ),
                      ),

                    ],
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }
            ),
          ),

        ),
      ),
    );
  }
}

