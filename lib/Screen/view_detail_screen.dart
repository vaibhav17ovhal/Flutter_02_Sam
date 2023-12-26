import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_screen.dart';

class ViewCourseDetailsScreen extends StatelessWidget {
  const ViewCourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff020301),
          ),
        ),
        title: Row(

          children: [
            Text(
              "Wonderland Christmas Carnival",
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey.shade800,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/pic3.png",
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Container(
                          height: h/20,
                          width: w/3.7,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Colors.red.shade200, width: 1)),
                          child: const Text(
                            "Recorded",
                            style:
                            TextStyle(color: Color(0xffab0d07), fontFamily: "Roboto_thin", fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: h/20,
                          width: w/3.7,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                              color: Colors.purple.shade50,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Colors.purple.shade200, width: 1)),
                          child: Text(
                            "Beginner",
                            style: TextStyle(
                              color: Colors.purple.shade600, fontSize: 16, fontFamily: "Roboto_thin",),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Wonderland Christmas Carnival",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 20,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.grey.shade800,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Step into the enchanting world of holiday magic\n'
                                'and joy at the Festive Wonderland Christmas\n'
                                'Carnival. This annual extravaganza invites\n'
                                'participants to create theis own stalls, turning',
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 17,
                                fontFamily: "Roboto_thin")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Row(children: [
                          const Icon(
                            Icons.calendar_today_rounded,
                            color: Color(0xffab0d07),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Date",
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 17,
                                fontFamily: "Roboto_thin"),
                          ),
                          const Spacer(),
                          Text("13 Dec - 13 Dec",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 17,
                                  fontFamily: "Roboto_thin"))
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          const Icon(
                            Icons.access_time_outlined,
                            color: Color(0xffab0d07),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Timing",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 17,
                              fontFamily: "Roboto_thin",
                            ),
                          ),
                          const Spacer(),
                          Text("1:45 PM - 3:15 PM",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 17,
                                  fontFamily: "Roboto_thin"))
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          const Icon(
                            Icons.alarm,
                            color: Color(0xffab0d07),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Duration",
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 17,
                                fontFamily: "Roboto_thin"),
                          ),
                          const Spacer(),
                          Text("1 Day",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 17,
                                fontFamily: "Roboto_thin",
                              ))
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          const Icon(
                            Icons.language,
                            color: Color(0xffab0d07),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Language",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 17,
                              fontFamily: "Roboto_thin",
                            ),
                          ),
                          const Spacer(),
                          Text("Hindi & English",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 17,
                                fontFamily: "Roboto_thin",
                              ))
                        ]),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Day 1",
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 17,
                                  fontFamily: "Roboto_thin"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Live at 1:45 PM - 3:15 PM",
                              style: TextStyle(
                                  color: Color(0xffab0d07),
                                  fontSize: 17,
                                  fontFamily: "Roboto_thin"),
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    "13",
                                    style: TextStyle(
                                        color: Color(0xffab0d07),
                                        fontSize: 17,
                                        fontFamily: "Roboto_thin"),
                                  ),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 17,
                                        fontFamily: "Roboto_thin"),
                                  ),
                                  Text(
                                    "DEC",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 17,
                                        fontFamily: "Roboto_thin"),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "How to Participate : Rules &\nRegulation",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: "Roboto_thin",
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "If you're a formulator, baker or in\nany category would like to\nsell your products and talk about\nthem or just showcase your\ntalent then this opportunity.",
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 17,
                                      fontFamily: "Roboto_thin"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Still have doubts? we are here for you",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              fontFamily: "Roboto_thin"),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.shade100),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.grey.shade500,
                              ),
                              Text(
                                "Request a callback",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8)),
        height: 130,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffe3dff3)),
              child: const Text(
                "Enter code GIFTFORYOU50 at checkout Get 50.0% OFF uoto Rs.200!",
                style: TextStyle(
                    color: Color(0xff7755d7),
                    fontSize: 17,
                    fontFamily: "Roboto_thin"),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Get.to(AddCart());
                    },
                    child: Container(
                      width: Get.width,
                      margin: const EdgeInsets.all(4),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffab0d07), width: 1)),
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Color(0xffab0d07),
                            fontSize: 17,
                            fontFamily: "Roboto_thin"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: Get.width,
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xffab0d07),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color(0xffab0d07), width: 1)),
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "Roboto_thin"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
