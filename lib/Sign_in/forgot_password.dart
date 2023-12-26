import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'otp_forget_password.dart';

String? off = "3";
class Forgot_Password extends StatefulWidget {
  const Forgot_Password({super.key});

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text("Forgot Password", style: TextStyle(fontFamily: "Roboto", color: Color(0xff020301))),
          iconTheme: IconThemeData(
          color: Color(0xff020301)
      ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: h/3),
          child: Column(
            children: [
              Center(child: Text("How would you like to reset your Password", style: TextStyle(fontFamily: "Roboto"))
              ),
              SizedBox(
                height: h/20,
              ),

              GestureDetector(
                onTap: (){
                  setState(() {
                    off = "0";
                    print(off);
                  });
                },
                child: Container(
                  height: h/12,
                  width: w/1.1,
                  decoration: BoxDecoration(
                    color: off == "0" ? Colors.green.shade200  : Color(0xffeff3f6),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: h/22,
                          width: w/7,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xffab0d07)),
                              color: Colors.white
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Icon(Icons.mail_outline, color: Color(0xffab0d07),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 17, bottom: 17),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Via Email"),
                                SizedBox(
                                  height: h/130,
                                ),
                                Text("123@gmail.com")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h/25,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    off = "1";
                  });
                },
                child: Container(
                  height: h/12,
                  width: w/1.1,
                  decoration: BoxDecoration(
                      color: off == "1" ? Colors.green.shade200 : Color(0xffeff3f6) ,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: h/22,
                          width: w/7,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xffab0d07)),
                              color: Colors.white
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Icon(Icons.sms_outlined, color: Color(0xffab0d07),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 17, bottom: 17),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Via SMS"),
                                SizedBox(
                                  height: h/130,
                                ),
                                Text("(+91) 1234567890")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h/20,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => Verify_forgot_password());
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
                      const Text("Continue",
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
                            Get.to(() => Verify_forgot_password());
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
            ],
          ),
        ),
      ),
    );
  }
}

