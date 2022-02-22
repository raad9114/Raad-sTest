import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewOrder_page extends StatefulWidget {
  const NewOrder_page({Key? key}) : super(key: key);

  @override
  _NewOrder_pageState createState() => _NewOrder_pageState();
}

class _NewOrder_pageState extends State<NewOrder_page> {

  String dropdownValue = 'Pick';

  int item = 0;

  bool _progressBarActive = true;


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
                child: Text("New Order",
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ),

          body: SingleChildScrollView(
            child: Column(
                  children: [

                    Container(
                      //color: Colors.blue,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (BuildContext context,int index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: FlatButton(
                                      onPressed: (){
                                        setState(() {
                                          item++;
                                        });
                                      },
                                      child:
                                       //_progressBarActive == false?const CircularProgressIndicator():
                                      Image(
                                        image: AssetImage("images/forklit.png"),
                                      ),

                                      // CircleAvatar(
                                      //   backgroundColor: Colors.red,
                                      //   radius: 65,
                                      //   backgroundImage: AssetImage('images/loading.gif'),
                                      //   child: Container(
                                      //     height: 80,
                                      //     width: 80,
                                      //     color: Colors.transparent,
                                      //     child: Image(
                                      //       image: NetworkImage("https://www.aygaz.com.tr/en/tupgaz/images/buyuktup/forklit-tupleri-24.png"),
                                      //     ),
                                      //   ),
                                      // ),

                                    ),
                                  ),
                                  
                                  Text("Fork Lift "),

                                  // SizedBox(width: 100,),



                                  IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if(item == 0){
                                            item=0;
                                          }
                                          else{
                                            item--;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.remove)
                                  ),
                                  Text("$item"),

                                  IconButton(

                                      onPressed: (){
                                        setState(() {

                                            item++;

                                        });
                                      },
                                      icon: Icon(Icons.add)
                                  ),
                                  
                                ],
                              ),
                            );
                          }
                      ),
                    ),


                    FlatButton(
                      color: Color(0xFF8CA6DB),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("Add"),
                    ),



                  ],
                ),
          ),
        ),
      ),
    );
  }
}
