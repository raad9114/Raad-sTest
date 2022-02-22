// import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:hrandsells/screen/login_page.dart';
//
// class Splashpage extends StatefulWidget {
//   const Splashpage({Key? key}) : super(key: key);
//
//   @override
//   _SplashpageState createState() => _SplashpageState();
// }
//
// class _SplashpageState extends State<Splashpage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//           child: AnimatedSplashScreen(
//             duration: 2000,
//             splash: Image.asset("images/osl2.jpg",
//               // height: MediaQuery.of(context).size.height,
//               // width: MediaQuery.of(context).size.width,
//             ),
//             splashIconSize: double.infinity,
//             nextScreen: const Login_page(),
//             splashTransition: SplashTransition.decoratedBoxTransition,
//             //pageTransitionType: PageTransitionType.scale,
//             backgroundColor: Color(0XFFDDE1ED),
//           )
//       ),
//     );
//   }
// }
//
//
//


import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hrandsells/screen/login_page.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: AnimatedSplashScreen(
            duration: 500,
            splash: Image.asset("images/orange.png",
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
            ),
            splashIconSize: double.infinity,
            nextScreen: const Login_page(),
            //splashTransition: SplashTransition.decoratedBoxTransition,
            //pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.white,
          )
      ),
    );
  }
}