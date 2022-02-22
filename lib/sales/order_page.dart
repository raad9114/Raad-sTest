import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrandsells/data_model/order_offline_model.dart';
import 'package:hrandsells/data_model/worknote_offline_model.dart';
import 'package:hrandsells/database/dbhwlperOrder.dart';
import 'package:hrandsells/sales/new_order.dart';

class Order_page extends StatefulWidget {
  const Order_page({Key? key}) : super(key: key);

  @override
  _Order_pageState createState() => _Order_pageState();
}

class _Order_pageState extends State<Order_page> {

  String dropdownValue = 'Pick';

  // late DatabaseHandlerOrder handler;
  //
  // void initState() {
  //   super.initState();
  //   this.handler = DatabaseHandlerOrder();
  //   this.handler.initializeDBwork().whenComplete(() async {
  //     await this.addUsers();
  //     setState(() {});
  //   });
  // }
  //
  // // Future<int> addUsers() async {
  // //
  // //   //print(snapshot.data?.length);
  // //
  // //   OrderOfflineModel firstUser = OrderOfflineModel(product: "addworkNote" , quantity: "2");
  // //   //WorkNoteOfflineModel secondUser = WorkNoteOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
  // //   List<OrderOfflineModel> listOfApplication = [firstUser];
  // //   return await this.handler.insertApplication(listOfApplication);
  // // }
  //
  // Future<int> addUsers() async {
  //
  //   //print(snapshot.data?.length);
  //
  //   OrderOfflineModel firstUser = OrderOfflineModel(product: "Fork Lift",quantity: "2");
  //   //WorkNoteOfflineModel secondUser = WorkNoteOfflineModel(leaveType: "Tour", fromDate: "26Jan2022", toDate: "10Feb2022", contactNumber: "022222222222", taskAssigntTo: "Raad", reasonApplicaiton: "Tour", createdAt: "$now");
  //   List<OrderOfflineModel> listOfApplication1 = [firstUser];
  //   return await this.handler.insertApplication(listOfApplication1);
  // }
  //
  //


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
                child: Text("Order",
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffcdd1e4),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.search,
                          size: 30,
                        ),

                        Container(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            onChanged: (input){

                            },
                          ),
                        )
                      ],
                    ),


                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.width/3,
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
                        //addUsers();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewOrder_page()));
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

                          Text("New Order",
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

                SizedBox(height: 20,),

                Container(
                  //color: Colors.blue,
                  child: ListView.builder(
                    shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (BuildContext context,int index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffcdd1e4),
                              borderRadius: BorderRadius.circular(20),
                            ),

                            child: Column(
                              children: [
                                Text("ABC Store",
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder: (BuildContext context, int index){
                                      return Row(
                                        children: [
                                          Text((index+1).toString() + ".",
                                            style: GoogleFonts.openSans(
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Fork Lift",
                                            style: GoogleFonts.openSans(
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(width: 10,),

                                          Text("2",
                                            style: GoogleFonts.openSans(
                                              fontSize: 15,
                                            ),
                                          ),

                                          SizedBox(width: 60,),



                                          IconButton(
                                              onPressed: (){

                                                showDialog(context: context, builder: (BuildContext context) {
                                                  return  AlertDialog(
                                                    title: const Text("Edit Product"),
                                                    content: Column(
                                                      children: [
                                                        const TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "Product Name",
                                                            //border: InputBorder.none,
                                                          ),
                                                          //keyboardType: TextInputType.number,
                                                        ),

                                                        const TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "Product Quantity",
                                                            //border: InputBorder.none,
                                                          ),
                                                          //keyboardType: TextInputType.number,
                                                        ),

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
                                                              items: <String>['Pick', 'KG', 'Packet', 'Box']
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
                                                                color: Colors.white,
                                                                width: 1),
                                                            borderRadius: BorderRadius.circular(5),
                                                            shape: BoxShape.rectangle,
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                    actions: [
                                                      FlatButton(
                                                        color: Color(0xFF8CA6DB),
                                                        onPressed: (){
                                                          Navigator.pop(context);
                                                        },
                                                        child: Text("Submit Edit"),
                                                      ),
                                                    ],
                                                    scrollable: true,
                                                  );
                                                });

                                              },

                                              icon: Icon(Icons.edit),
                                          )

                                        ],
                                      );
                                    }
                                ),
                              ],
                            )

                          ),
                        );
                      }
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(left: 10.0, right: 10),
                //   child: Container(
                //     height: 500,
                //     width: MediaQuery.of(context).size.width,
                //     color: Colors.white,
                //     child: FutureBuilder(
                //       future: this.handler.retrieveUsers(),
                //       builder: (BuildContext context, AsyncSnapshot<List<OrderOfflineModel>> snapshot) {
                //         if (snapshot.hasData) {
                //           return ListView.builder(
                //             itemCount: snapshot.data?.length,
                //             itemBuilder: (BuildContext context, int index) {
                //               return Dismissible(
                //                 direction: DismissDirection.endToStart,
                //                 background: Container(
                //                   color: Colors.red,
                //                   alignment: Alignment.centerRight,
                //                   padding: EdgeInsets.symmetric(horizontal: 10.0),
                //                   child: Icon(Icons.delete_forever),
                //                 ),
                //                 key: ValueKey<int>(snapshot.data![index].id!),
                //                 onDismissed: (DismissDirection direction) async {
                //                   await this.handler.deleteUser(snapshot.data![index].id!);
                //                   setState(() {
                //                     snapshot.data!.remove(snapshot.data![index]);
                //                   });
                //                 },
                //                 child: Card(
                //                     color: Colors.grey,
                //                     child: ListTile(
                //                       contentPadding: EdgeInsets.all(8.0),
                //                       title: Text(snapshot.data![index].product),
                //                       subtitle: Text(snapshot.data![index].quantity),
                //                     )),
                //               );
                //             },
                //           );
                //         } else {
                //           return Center(child: CircularProgressIndicator());
                //         }
                //       },
                //     ),
                //   ),
                // ),



              ],
            ),
          ),

        ),
      ),
    );
  }
}
