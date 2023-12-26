import 'dart:async';
import 'dart:math';
import 'package:beauty_app/Sign_in/create_new_password.dart';
import 'package:beauty_app/Sign_in/enter_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

var one;

class Verify_forgot_password extends StatefulWidget {
  //final String otp;

  //Verify({required this.otp, required id});

  @override
  State<Verify_forgot_password> createState() => _Verify_forgot_passwordState();
}

class _Verify_forgot_passwordState extends State<Verify_forgot_password> {
  String otp = '';
  String otpResendValue = '';
  String mobiles = '';
  bool showCenter = false;
  int _remainingTime = 30;
  bool _isTimerActive = false;
  Timer? _timerr;

  bool _onEditing = true;
  String? _code;

  generateOTP() {
    setState(() {
      one = (1000 + Random().nextInt(9000)).toString();
    });
  }

  void startTimer() {
    setState(() {
      _isTimerActive = true;
    });

    _timerr = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime == 0) {
        stopTimer();
      } else {
        setState(() {
          _remainingTime--;
        });
      }
    });
  }

  void stopTimer() {
    setState(() {
      _isTimerActive = false;
    });
    if (_timerr != null) {
      _timerr!.cancel();
    }
  }

  void resendOTP() {
    setState(() {
      _remainingTime = 30;
    });
    startTimer();
  }

  int _secondsRemaining = 30;
  late Timer _timer;
  TextEditingController otpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    startTimer();
    //otp = widget.otp;
  }

  void getMobileFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      mobiles = prefs.getString('mobile') ?? '';
    });
  }

  // Future<bool> verifyOTP(mobiles, String otp) async {
  //   final Uri url = Uri.parse('http://103.104.74.215:3026/needoo/digital/Verifyotp');
  //
  //   final Map<String, String> requestBody = {
  //     'mobile': mobiles,
  //     'otp': otp,
  //   };
  //
  //   try {
  //     final http.Response response = await http.post(
  //       url,
  //       body: requestBody,
  //     );
  //
  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> responseData = json.decode(response.body);
  //       if (responseData['result'] == 'true') {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //     } else {
  //       print('HTTP Error: Status Code ${response.statusCode}');
  //       if (response.body.isNotEmpty) {
  //         print('Response Body: ${response.body}');
  //       }
  //       return false;
  //     }
  //   } catch (e) {
  //     return false;
  //   }
  // }

  String errorMessage = '';
  String existingOTP = "3284";
  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the screen is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    final defaultPinTheme = PinTheme(
      width: 65,
      height: 65,
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: h / 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h / 80,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/otp.png",
                      height: h/5,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(
                    height: h/10,
                  ),
                  const Text(
                    'Please enter the OPT to continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: h / 13,
                    width: w / 1,
                    child: Center(
                      child: VerificationCode(
                        textStyle:
                        TextStyle(fontSize: 20.0, color: Colors.red[900]),
                        keyboardType: TextInputType.number,
                        underlineColor: Colors
                            .amber,
                        length: 4,
                        cursorColor: const Color(0xffab0d07),

                        onCompleted: (String value) {
                          setState(() {
                            _code = value;
                          });
                        },
                        onEditing: (bool value) {
                          setState(() {
                            _onEditing = value;
                          });
                          if (!_onEditing) FocusScope.of(context).unfocus();
                        },
                      ),
                      // Pinput(
                      //     length: 4,
                      //     defaultPinTheme: defaultPinTheme,
                      //     // focusedPinTheme: focusedPinTheme,
                      //     // submittedPinTheme: submittedPinTheme,
                      //     showCursor: true,
                      //     onCompleted: (pin)
                      //     {
                      //       setState(() {
                      //         otp = pin;
                      //       });
                      //     }),
                    ),
                  ),
                  SizedBox(height: h / 20),
                  InkWell(
                    onTap: () {
                      Get.to(Create_password());
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
                          const Spacer(),
                          const Text("Verify",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20)),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                Get.to(Create_password());
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
                  // Container(
                  //   width: w / 1,
                  //   height: h / 15,
                  //   child:
                  //   ElevatedButton(
                  //       style: ButtonStyle(
                  //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(10))),
                  //           backgroundColor:
                  //           MaterialStateProperty.all(Color(0xffab0d07))),
                  //       onPressed: () async {
                  //
                  //       },
                  //
                  //
                  //       child: Text("Verify",
                  //         //AppLocalizations.of(context)!.verify,
                  //         style: TextStyle(color: Colors.white, fontSize: 20),
                  //       )),
                  // ),
                  // Button_widget(
                  //   onpressed: () async {
                  //     // String mobileNumber = mobiles;
                  //     // String enteredOtp = otpController.text;
                  //     // bool isVerified = await verifyOTP(mobileNumber, enteredOtp);
                  //     // if (isVerified) {
                  //     //   Get.offAll(Nav_bar());
                  //     // } else {
                  //     //   setState(() {
                  //     //     errorMessage = 'Wrong OTP. Please try again.';
                  //     //   });
                  //     // }
                  //   },
                  //   button_height: 17,
                  //   button_weight: 1,
                  //   buttontext: 'Verify & Continue',
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't recieve OTP ? "),
                        !_isTimerActive
                            ? TextButton(
                            onPressed: () {
                              resendOTP();
                              //resend_otp_api();
                            },
                            child: Text("Resend OTP",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffab0d07))))
                            : Text(
                          '  $_remainingTime seconds',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  // Text(
                  //   'Time Remaining: $_secondsRemaining seconds',
                  //   style: TextStyle(fontSize: 14),
                  // ),
                  // SizedBox(height: 10,),
                  // Text(
                  //   errorMessage,
                  //   style: TextStyle(
                  //     color: Colors.red,
                  //   ),
                  // ),
                  // if (showCenter)
                  //   Center(
                  //     child: Column(
                  //       children: [
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Text(
                  //               "Didn't receive OTP?",
                  //               style: TextStyle(color: Color(0xff707684)),
                  //             ),
                  //             TextButton(
                  //               onPressed: () {
                  //                 //resendOTP('7898546320', 'your_fcm_token');
                  //               },
                  //               child: Text("Resend OTP", style: TextStyle(color: Color(0xffab0d07))),
                  //             )
                  //           ],
                  //         ),
                  //         Text(
                  //           'Your Resent OTP: $otpResendValue',
                  //           style: TextStyle(
                  //             fontSize: 14,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// Future<void> resendOTP(String mobile, String fcm) async {
//   final Uri url = Uri.parse('http://103.104.74.215:3026/needoo/digital/ResendOtp');
//   final Map<String, String> requestBody = {
//     'mobile': mobile,
//     'fcm': fcm,
//   };
//
//   try {
//     final http.Response response = await http.post(
//       url,
//       body: requestBody,
//     );
//
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> responseData = json.decode(response.body);
//       final int newOtpInt = responseData['data']['otp'];
//       final String newOtp = newOtpInt.toString();
//
//       setState(() {
//         otpResendValue = newOtp;
//       });
//
//       print('OTP from Response: $newOtp');
//
//     } else {
//       print('HTTP Error: Status Code ${response.statusCode}');
//       if (response.body.isNotEmpty) {
//         print('Response Body: ${response.body}');
//       }
//     }
//   } catch (e) {
//     print('Error: An exception occurred while resending OTP: $e');
//   }
// }
}
