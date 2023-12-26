import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Category/categories_view.dart';
import 'Category/category01.dart';
import 'about_us.dart';
import 'account_setting.dart';
import 'faq_screen.dart';
import 'my_courses.dart';
import 'product_formulation.dart';
import 'refer_earn.dart';
import 'term_and_condition.dart';
import 'transition_history.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

TextEditingController nameController = TextEditingController();

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfffefff7),
      appBar: AppBar(
        backgroundColor: const Color(0xfffefff7),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.to(() => const MyCourses());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff020301),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h/120,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfffefff7),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.grey.shade200),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade50,
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      _modalBottomSheetMenu(context);                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h/200,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xfffefff7),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey.shade200),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade50,
                        blurRadius: 1,
                      ),
                    ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(() => const FAQScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.help_outline,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Frequently Asked Questions",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                    Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 15,
                                        color: Colors.grey.shade800,
                                      )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      _modalBottomSheetMenuRateUs(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Rate Us",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                    Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 15,
                                        color: Colors.grey.shade800,
                                      )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      _modalBottomSheetMenuShareFeedback(context);                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.sms_failed_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Share your Feedback",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(() => const TransactionHistory());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.history_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Transaction History",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(() => const ReferEarn());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.monetization_on_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Refer and Earn",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      //Get.to(() => const ReferEarn());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.call,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Call Support",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: h/200,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfffefff7),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.grey.shade200),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade50,
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(() => const AboutUs());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.interpreter_mode_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "About Us",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      //_modalBottomSheetMenuShareFeedback(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.contact_phone_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Contact Us",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      //Get.to(() => const TransactionHistory());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.monetization_on_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Refund Policy",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      //Get.to(() => const ReferEarn());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.policy_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                  Divider(),
                  SizedBox(
                    height: h/60,
                  ),
                  InkWell(
                    onTap: (){
                      //Get.to(() => const ReferEarn());
                      Get.to(() => const TermCondition());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xffab0d07),
                            ),
                            SizedBox(
                              width: w/30,
                            ),
                            Text(
                              "Terms & Condition",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/60,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: h/200,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfffefff7),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.grey.shade200),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade50,
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const AccountSetting());
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings_suggest_outlined,
                          size: 20,
                          color: Colors.grey.shade800,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Account settings",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 20,
                              fontFamily: "Roboto_thin"),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.grey.shade800,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(color: Colors.grey.shade200),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.login_outlined,
                        size: 20,
                        color: Color(0xffab0d07),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20,
                            fontFamily: "Roboto_thin"),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                        color: Colors.grey.shade800,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h/120,
            ),
          ],
        ),
      ),
    );
  }
}

void _modalBottomSheetMenu(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return Padding(
          padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: Get.height / 2.4,
                color: Colors.transparent,
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "User Name",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 20,
                                    fontFamily: "Roboto_thin"),
                              ),
                              IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(Icons.close,
                                    color: Colors.grey.shade800),
                              )
                            ],
                          ),
                          Divider(color: Colors.grey.shade200),
                          Text(
                            "Enter you name below",
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 20,
                                fontFamily: "Roboto_thin"),
                          ),
                          const SizedBox(height: 5),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Name',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "The name you provide here will appear on your certificate",
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 17,
                                letterSpacing: 1,
                                fontFamily: "Roboto_thin"),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: Get.width,
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: const Color(0xffab0d07),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              "Save Changes",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ])),
              ),
            ],
          ),
        );
      });
}

void _modalBottomSheetMenuRateUs(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return Padding(
          padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: Get.height / 3.6,
                color: Colors.transparent,
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rate Us",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 20,
                                    fontFamily: "Roboto_thin"),
                              ),
                              IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(Icons.close,
                                    color: Colors.grey.shade800),
                              )
                            ],
                          ),
                          Divider(color: Colors.grey.shade200),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent.shade700,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent.shade700,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent.shade700,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent.shade700,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent.shade700,
                                size: 30,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: Get.width,
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: const Color(0xffab0d07),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ])),
              ),
            ],
          ),
        );
      });
}

void _modalBottomSheetMenuShareFeedback(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return Padding(
          padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: Get.height / 2.3,
                color: Colors.transparent,
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Share your Feedback",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 20,
                                    fontFamily: "Roboto_thin"),
                              ),
                              IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(Icons.close,
                                    color: Colors.grey.shade800),
                              )
                            ],
                          ),
                          Divider(color: Colors.grey.shade200),
                          TextField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: 'Write your feedback',
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 17,
                                  fontFamily: "Roboto_thin"),
                            ),
                            maxLines: 5,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: Get.width,
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: const Color(0xffab0d07),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ])),
              ),
            ],
          ),
        );
      });
}
