import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beauty_app/Sign_in/Register02.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Log_in/login.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/one.jpg"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: h / 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Image.asset("assets/images/02-removebg-preview.png",
                      scale: 2.5, color: Colors.white),
                ),
                // SizedBox(
                //   height: h/5,
                // ),
                SizedBox(
                  height: h / 7,
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText("Create a \nNew Account",
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                          speed: const Duration(milliseconds: 50))
                    ],
                  ),
                ),
                const Text(
                  "For the best experience \nwith Sam and Jas",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, letterSpacing: 3,
                  fontFamily: "Roboto_thin"),
                ),
                SizedBox(
                  height: h / 3,
                ),
                Container(
                  width: w / 1.3,
                  height: h / 25,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.redAccent.shade700)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Screen02()));
                      },
                      child: const Text(
                        "REGISTER",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  height: h / 30,
                ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                            style: TextStyle(color: Colors.black, fontSize: 15)),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: TextButton(
                      onPressed: () {
                        Get.to(const Login01());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.redAccent.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
