import 'package:beauty_app/Log_in/otp_Login.dart';
import 'package:beauty_app/Screen/country_code.dart';
import 'package:beauty_app/Sign_in/email_Signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'otp_Signin.dart';

class Screen02 extends StatefulWidget {
  const Screen02({super.key});

  @override
  State<Screen02> createState() => _Screen02State();
}

class _Screen02State extends State<Screen02> {
  final codeController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: ListView(
        children:[
          Form(
            child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h / 12,
              ),
              Center(
                child: Image.asset("assets/images/signIn.png", height:200, width:180,
                    fit:BoxFit.cover),
              ),
              const SizedBox(
                height: 15,
              ),

              const Text(
                "SignIn with Phone Number \nto continue",
                style: TextStyle(
                    color: Color(0xff020301),
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    //height: h/3,
                    width: w/6,
                    // decoration: BoxDecoration(
                    //   color: Colors.grey.shade300,
                    //   borderRadius: BorderRadius.all(Radius.circular(10))
                    // ),
                    child: TextFormField(
                      onTap: () {
                        Get.to(const Country_code());
                      },
                      readOnly: true,
                      controller: codeController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffeff3f6),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "+91"),
                    ),

                    // TextFormField(
                    //
                    //   initialValue: name.isNotEmpty? "${name}": "+912",
                    //   onTap: (){
                    //     Get.to(Country_code());
                    //   },
                    //   readOnly: true,
                    //   style: TextStyle(color: Colors.white),
                    //
                    //   keyboardType: TextInputType.phone,
                    //   decoration: InputDecoration(
                    //       focusedBorder: UnderlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.redAccent.shade700, width: 3),
                    //          ),
                    //       hintText: "91",
                    //       hintStyle: TextStyle(color: Colors.white),
                    //       prefixIcon: Icon(Icons.code, color: Colors.white),
                    //       enabledBorder: UnderlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white))),
                    // ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      //height: h/3,
                      width: Get.width,
                      child: TextFormField(
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        controller: phoneController,
                        validator: (value) {
                          if (value!.length < 10) {
                            return "Invalid Phone Number";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffeff3f6),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Phone Number",
                          // prefixIcon: Icon(Icons.call, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Get.to(()=> const SignUpScreen());
                },
                child: const Text("SignIn with Email Address",
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 17
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
           /*   TextFormField(
                controller: emailController,
                   validator: (value) {
                  if (value!.length < 10) {
                    return "Invalid Phone Number";
                  } else {
                    return null;
                  }
                },
                   textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,*//*
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
                  prefixIcon: Icon(Icons.mail, color: Colors.grey),
                ),
              ),*/
              const SizedBox(height: 10),

              InkWell(
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
              ),
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
