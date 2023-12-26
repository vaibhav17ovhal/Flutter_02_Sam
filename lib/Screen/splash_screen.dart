import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:beauty_app/Sign_in/Register.dart';
import 'package:beauty_app/Screen/slider.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async{
    await Future.delayed(Duration(seconds: 2), (){});
    Navigator.pushReplacement(context, PageTransition(child: ONborad(), type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 500)));
  }

  @override
  Widget build(BuildContext context) {
    return

      // Page(scrollDirection: Axis.horizontal,
      //
      //   children: [ Center(
      //     child: Image.asset("assets/images/02-removebg-preview.png", scale: 2,color: Colors.white),
      //   )],

          Scaffold(
        backgroundColor: Colors.redAccent.shade700,
 body:
          Center(
            child: Image.asset("assets/images/02-removebg-preview.png", scale: 2,color: Colors.white),
          )
// AnimatedSplashScreen(
//     splash: "assets/images/02-removebg-preview.png", splashIconSize: 250,
//     duration: 2000,
//     splashTransition: SplashTransition.slideTransition,
//     backgroundColor: Colors.red.shade800,
//     //pageTransitionType: PageTransitionType.rightToleft,
//     nextScreen: Registration()),

// Center(
//   child:   Container(
//     decoration: BoxDecoration(
//       color: Colors.red
//     ),
//     child: Text("Splash", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
//   ),
// ),
//     ),
      );
  }
}
