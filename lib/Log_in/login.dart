import 'package:beauty_app/Controllers/button.dart';
import 'package:beauty_app/Controllers/text.dart';
import 'package:beauty_app/Log_in/otp_Login.dart';
import 'package:beauty_app/Screen/country_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../Controllers/text2.dart';
import '../Sign_in/otp_Signin.dart';
import 'email_login.dart';




class Login01 extends StatefulWidget {
  const Login01({super.key});

  @override
  State<Login01> createState() => _Login01State();
}

class _Login01State extends State<Login01> {
  bool isloading = false;
  var ll;
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
      body:
    //   Container(
    //     height: h,
    //     width: w,
    //     decoration: const BoxDecoration(
    //     image: DecorationImage(
    //     image: AssetImage("assets/images/one.jpg"),
    // fit: BoxFit.cover)),
       //child:
      SingleChildScrollView(
        child: Column(
            children:[
              Form(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: h / 5,
                        ),
                        Center(child: Text("Sam and Jas", style: M_style_title)),
                        // Center(
                        //   child: Image.asset("assets/images/signIn.png", height:200, width:180,
                        //       fit:BoxFit.cover),
                        // ),
                        // const SizedBox(
                        //   height: 15,
                        // ),
                        SizedBox(
                          height: h / 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: M_style_heading
                            ),
                            SizedBox(
                              width: w/80,
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                  color: Colors.grey.shade900,
                                  //color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  letterSpacing: 1.5
                              ),
                            ),
                            SizedBox(
                              width: w/80,
                            ),
                            Text(
                              "Register",
                              style: M_style_heading
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h/8,
                        ),
                        Center(child: Text("Enter your mobile number", style: M_style_mid)),
                        SizedBox(
                          height: h/20,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Container(
                                height: h/10,
                                width: w/1.2,
                                child: IntlPhoneField(
                                  style: M_style_mid,
                                  initialCountryCode: "IN",
                                  //dropdownTextStyle: TextStyle(color: Colors.white),
                                  onCountryChanged: (value) {
                                    setState(() {
                                      ll=value.maxLength;
                                    });
                                  },
                                  controller: codeController,
                                  validator: (value) {
                                    if (value == null) {
                                      return "please mobile";
                                    }
                                    return null;
                                  },
                                  flagsButtonPadding: const EdgeInsets.all(5),
                                  dropdownIconPosition: IconPosition.trailing,
                                  decoration: InputDecoration(
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    labelText: 'Mobile Number',
                                    labelStyle: M_style_mid,
                                    //labelStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide:  BorderSide(color: Colors.white, width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.redAccent.shade700, width: 1),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  //   enabledBorder: OutlineInputBorder(
                                  //       borderSide: BorderSide(color: Colors.white, width: 1),
                                  //       borderRadius: BorderRadius.circular(10)
                                    // focusedBorder: OutlineInputBorder(
                                    //     borderSide:
                                    //     BorderSide(color: Colors.redAccent.shade700, width: 1),
                                        //borderRadius: BorderRadius.circular(10)),
                                  // ),
                                ),
                                )
                              )],
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     Container(
                        //       //height: h/3,
                        //       width: w/6,
                        //       // decoration: BoxDecoration(
                        //       //   color: Colors.grey.shade300,
                        //       //   borderRadius: BorderRadius.all(Radius.circular(10))
                        //       // ),
                        //       child: TextFormField(
                        //         onTap: () {
                        //           Get.to(const Country_code());
                        //         },
                        //         readOnly: true,
                        //         controller: codeController,
                        //         textInputAction: TextInputAction.next,
                        //         //keyboardType: TextInputType.emailAddress,
                        //         decoration: InputDecoration(
                        //             filled: true,
                        //             fillColor: const Color(0xffeff3f6),
                        //             focusedBorder: OutlineInputBorder(
                        //                 borderSide:
                        //                 const BorderSide(color: Colors.grey, width: 1),
                        //                 borderRadius: BorderRadius.circular(10)),
                        //             enabledBorder: OutlineInputBorder(
                        //                 borderSide:
                        //                 const BorderSide(color: Colors.grey, width: 1),
                        //                 borderRadius: BorderRadius.circular(10)),
                        //             border: OutlineInputBorder(
                        //                 borderSide:
                        //                 const BorderSide(color: Colors.grey, width: 1),
                        //                 borderRadius: BorderRadius.circular(10)),
                        //             hintText: "+91"),
                        //       ),
                        //
                        //       // TextFormField(
                        //       //
                        //       //   initialValue: name.isNotEmpty? "${name}": "+912",
                        //       //   onTap: (){
                        //       //     Get.to(Country_code());
                        //       //   },
                        //       //   readOnly: true,
                        //       //   style: TextStyle(color: Colors.white),
                        //       //
                        //       //   keyboardType: TextInputType.phone,
                        //       //   decoration: InputDecoration(
                        //       //       focusedBorder: UnderlineInputBorder(
                        //       //           borderSide: BorderSide(color: Colors.redAccent.shade700, width: 3),
                        //       //          ),
                        //       //       hintText: "91",
                        //       //       hintStyle: TextStyle(color: Colors.white),
                        //       //       prefixIcon: Icon(Icons.code, color: Colors.white),
                        //       //       enabledBorder: UnderlineInputBorder(
                        //       //           borderSide: BorderSide(color: Colors.white))),
                        //       // ),
                        //     ),
                        //     const SizedBox(
                        //       width: 10,
                        //     ),
                        //     Expanded(
                        //       child: SizedBox(
                        //         //height: h/3,
                        //         width: Get.width,
                        //         child: TextFormField(
                        //           inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        //           controller: phoneController,
                        //           validator: (value) {
                        //             if (value!.length < 10) {
                        //               return "Invalid Phone Number";
                        //             } else {
                        //               return null;
                        //             }
                        //           },
                        //           textInputAction: TextInputAction.next,
                        //           keyboardType: TextInputType.phone,
                        //           decoration: InputDecoration(
                        //             filled: true,
                        //             fillColor: const Color(0xffeff3f6),
                        //             focusedBorder: OutlineInputBorder(
                        //                 borderSide:
                        //                 const BorderSide(color: Colors.black, width: 1),
                        //                 borderRadius: BorderRadius.circular(10)),
                        //             enabledBorder: OutlineInputBorder(
                        //                 borderSide:
                        //                 const BorderSide(color: Colors.grey, width: 1),
                        //                 borderRadius: BorderRadius.circular(10)),
                        //             border: OutlineInputBorder(
                        //                 borderSide:
                        //                 const BorderSide(color: Colors.grey, width: 1),
                        //                 borderRadius: BorderRadius.circular(10)),
                        //             hintText: "Phone Number",
                        //             // prefixIcon: Icon(Icons.call, color: Colors.grey),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // InkWell(
                        //   onTap: (){
                        //     Get.to(()=> const Login_email());
                        //   },
                        //   child: const Text("Login with Email Address",
                        //       style: TextStyle(
                        //           color: Colors.black,
                        //           decoration: TextDecoration.underline,
                        //           fontSize: 17
                        //       )),
                        // ),

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
                        SizedBox(
                          height: h/50,
                        ),
                          Container(
                            height: h/19,
                            width: w/1.2,
                            child: ElevatedButton(
                              style: buttonPrimary,
                                onPressed: (){
                                setState(() {
                                  isloading = true;
                                });
                                Future.delayed(Duration(seconds: 2), (){
                                  setState(() {
                                    isloading = false;
                                    Get.to(Verify_Login());
                                    //Get.to(Verify());
                                  });
                                });
                                },
                                child: isloading? CircularProgressIndicator(color: Colors.white) :
                                Text("Send OTP", style: M_style_text_inside_button)),
                          ),
                          // InkWell(
                          //   onTap: () {
                          //     Get.to(Verify_Login());
                          //   },
                          //   child: Container(
                          //     padding: const EdgeInsets.only(left: 8),
                          //     height: h/20,
                          //     width: w / 1.2,
                          //     decoration: BoxDecoration(
                          //         color: Colors.redAccent.shade700,
                          //         borderRadius: BorderRadius.circular(25)),
                          //     child: Center(
                          //       child: Text("Send OTP",
                          //           style: TextStyle(
                          //               fontWeight: FontWeight.bold,
                          //               color: Colors.white,
                          //               fontSize: 20)),
                          //     ),
                          //   ),
                          // ),
                        SizedBox(
                          height: h/80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("By signing up, you agree to Sam & Jas ",
                                style: M_style_foot),
                            GestureDetector(
                              onTap: (){},
                              child: Text("Terms & Condition ",
                                  style: M_style_foot_button),
                            ),
                            Text("and ",
                                style: M_style_foot),
                            Text("Privacy Policy",
                                style: M_style_foot_button),
                          ],
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
      ),
    // )

    );
  }
}
