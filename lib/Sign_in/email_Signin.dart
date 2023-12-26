import 'package:beauty_app/Sign_in/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screen/country_code.dart';
import 'otp_Signin.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final valid = GlobalKey<FormState>();
  RegExp pattern = RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+");

  bool passwordObscured = true;

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: ListView(children: [
        Form(
            child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h / 12,
              ),
              Center(child: Image.asset("assets/images/signIn.png")),
              const SizedBox(
                height: 15,
              ),

              Text(
                "SignIn with Email Address \nto continue",
                style: TextStyle(
                    color: Color(0xff020301),
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                fontFamily: "Roboto"),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                /* validator: (value) {
                                        if (value!.length < 10) {
                                          return "Invalid email address";
                                        } else {
                                          return null;
                                        }
                                      },*/
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffeff3f6),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Email",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                // validator: (value) {
                //   if (value!.length < 6) {
                //     return "Wrong password";
                //   } else {
                //     return null;
                //   }
                // },
                obscureText: passwordObscured,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffeff3f6),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordObscured = !passwordObscured;
                          });
                        },
                        icon: Icon(
                          passwordObscured
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        )),

                    hintText: "Password"),
                controller: passwordController,
              ),
              SizedBox(
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: isChecked,
                        activeColor: Color(0xffab0d07),
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },),
                      Text("Remember me", style: TextStyle(fontFamily: "Roboto"),),
                    ],
                  ),
                  TextButton(
                      onPressed: (){
                        Get.to(Forgot_Password());
                      },
                      child: Text("Forgot Password ?", style: TextStyle(fontFamily: "Roboto"),))
                ],
              ),
              SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: () {
                  Get.to(() => Verify());
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 8),
                  height: 50,
                  width: w / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.shade700,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Spacer(),
                      const Text("SignIn",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20)),
                      Spacer(),
                      Container(
                        margin: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Get.to(() => Verify());
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.redAccent.shade700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              /* InkWell(
                        onTap: () {
                          Get.defaultDialog(
                              title: "Happy Hair",
                              content: Text(
                                  "We will verifying your phone number \n\n${name.toString()}  ${phoneController.text.toString()} \n\nIs this OK,or would like to edit the number?"),
                              cancel: TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text("EDIT")),
                              confirm: TextButton(onPressed: () {}, child: const Text("OK")));
                        },
                        child: InkWell(
                          onTap: () {
                            Get.to(() => Verify());
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 8),
                            height: 50,
                            width: w / 1.2,
                            decoration: BoxDecoration(
                                color: Colors.redAccent.shade700,
                                borderRadius: BorderRadius.circular(25)),
                            child: Row(

                              children: [
                                Spacer(),
                                const Text("NEXT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20)),
                                Spacer(),
                                Container(
                                  margin: const EdgeInsets.all(2),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Get.to(() => Verify());
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.redAccent.shade700,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),*/
              // Container(
              //     width: w/1.3,
              //     height: h/20,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.all(Radius.circular(20))
              //     ),
              //     child: ElevatedButton(
              //         style: ButtonStyle(
              //             backgroundColor: MaterialStatePropertyAll(Colors.redAccent.shade700)),
              //         onPressed: (){
              //           //Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen02()));
              //           Get.defaultDialog(
              //               title: "Happy Hair",
              //               content: Text("We will verifying your phone number \n\n${name.toString()}  ${phonecontroller.text.toString()} \n\nIs this OK,or would like to edit the number?"),
              //               cancel: TextButton(
              //                   onPressed: (){
              //                     Get.to(Screen02());
              //                   },
              //                   child: Text("EDIT")),
              //               confirm: TextButton(
              //                   onPressed: (){
              //                     Get.to(OTP());
              //                   },
              //                   child: Text("OK")
              //               ));
              //         },
              //         child: Text("NEXT", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),)),
              // ),
            ],
          ),
        )),
      ]),
    );
  }
}
