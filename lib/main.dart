import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hrandsells/drawer/drawer_page.dart';
import 'package:hrandsells/screen/login_page.dart';
import 'package:hrandsells/screen/splash_screen.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // Directory document = await getApplicationDocumentsDirectory();
  // Hive.init(document.path);
  // await Hive.openBox<String>("friends");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
     // home: Drawerpage(),
     home: Splashpage(),
     //  home: MainPage(title: "title"),
    );
  }
}


//
// child: ListView(
// children: [
// // const DrawerHeader(
// //   decoration: BoxDecoration(
// //     color: Colors.blue,
// //   ),
// //   child: Image(
// //     image: AssetImage("images/loginscreen.PNG"),
// //   ),
// // ),
//
// const DrawerHeader(
// child: Text(' '),
// decoration: BoxDecoration(
// color: Colors.blue,
// image: DecorationImage(
// image: AssetImage("images/loginscreen.PNG"),
// fit: BoxFit.fill)
// ),
// ),
//
// SizedBox(height: 10,),
//
// ListTile(
// title: Text("Personal Notifications",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
//
// ListTile(
// title: Text("Leave and Tour Application",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
//
// ListTile(
// title: Text("Absence Approval Application",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
//
// ListTile(
// title: Text("Personal Attendance Info",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
//
// ListTile(
// title: Text("Personal Duty Schedule",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
//
// ListTile(
// title: Text("Personal Leave Information",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
//
// ListTile(
// title: Text("Date Wise Leave Information",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
//
// ListTile(
// title: Text("Personal Pay Slip",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
// SizedBox(height: 10,),
//
// ListTile(
// title: Text("Personal IT Calculation Report",
// style: GoogleFonts.openSans(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// )
// ),
// onTap: (){
//
// },
// ),
//
//
// ],
// ),