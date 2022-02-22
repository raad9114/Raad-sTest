import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Report_page extends StatefulWidget {
  const Report_page({Key? key}) : super(key: key);

  @override
  _Report_pageState createState() => _Report_pageState();
}

class _Report_pageState extends State<Report_page> {

  viewFile() async {
    final _url = 'http://www.africau.edu/images/default/sample.pdf';
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      print('Something went wrong');
    }
    print("Function");
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
                  child: Text("Report",
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
            ),

            body: Column(
              children: [

                Container(
                  //color: Colors.blue,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
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

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text((index+1).toString() + ".",
                                    style: GoogleFonts.openSans(
                                      fontSize: 15,
                                    ),
                                  ),

                                  Text( "Report "+(index+1).toString(),
                                    style: GoogleFonts.openSans(
                                      fontSize: 15,
                                    ),
                                  ),

                                  SizedBox(width: 50,),

                                  FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      color: Colors.white,
                                      padding: EdgeInsets.all(10),
                                      onPressed: (){
                                        viewFile();
                                      },
                                      child: Row(
                                        children: [
                                          Text("View Report",
                                            style: GoogleFonts.openSans(
                                              fontSize: 15,
                                            ),
                                          ),

                                          Icon(Icons.remove_red_eye_outlined),

                                        ],
                                      )

                                  )



                                ],
                              )

                          ),
                        );
                      }
                  ),
                ),

              ],
            ),

          ),
      ),
    );
  }
}
