import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chat_screen.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        automaticallyImplyLeading: false,
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Color(0xff020301),
        //   ),
        // ),
        title: Text(
          "Refer & Earn",
          style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto_thin"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffe3dff3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Earn cash upto Rs.150 for\n every friend you refer",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Roboto_thin",
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: const Color(0x3cc999f1),
                                borderRadius: BorderRadius.circular(50)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("assets/images/invite.png",
                                  fit: BoxFit.cover, height: 50, width: 50),
                            ),
                          ),
                          Text(
                            "Invite A Friend",
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontFamily: "Roboto_thin"),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        size: 18,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: const Color(0x3cc999f1),
                                borderRadius: BorderRadius.circular(50)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("assets/images/order.png",
                                  fit: BoxFit.cover, height: 50, width: 50),
                            ),
                          ),
                          Text(
                            "Friend Places Order",
                            style: TextStyle(
                              fontFamily: "Roboto_thin",
                              color: Colors.grey.shade800,
                            ),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        size: 18,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: const Color(0x3cc999f1),
                                borderRadius: BorderRadius.circular(50)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("assets/images/cash.png",
                                  fit: BoxFit.cover, height: 50, width: 50),
                            ),
                          ),
                          Text(
                            "You Earn Cash",
                            style: TextStyle(
                              fontFamily: "Roboto_thin",
                              color: Colors.grey.shade800,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xffe3dff3), width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.monetization_on,
                                  color: Colors.yellow.shade800,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "You earn",
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Roboto_thin",
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            Text(
                              "RS.150 cash reward for\neach friend you refer",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 15,
                                  fontFamily: "Roboto_thin"),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.celebration,
                                  color: Colors.yellow.shade800,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Your friend gets",
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontFamily: "Roboto_thin",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            Text(
                              "20% discount on 1st\norder (Max.Rs.50 off).",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 15,
                                  fontFamily: "Roboto_thin"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffab0d07),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Refer a Friend",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto_thin",
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ChatScreen());
                    },
                    child: Container(
                      width: Get.width,
                      margin:
                      const EdgeInsets.only(left: 8, right: 8, bottom: 4),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "GIFTFORYOU50",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Roboto_thin"),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "10,000+ users have earned up to Rs.5000",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 15,
                        fontFamily: "Roboto_thin"),
                  ),
                  Divider(color: Colors.grey.shade400),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "How it works?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xffab0d07),
                            fontFamily: "Roboto_thin"),
                      ),
                      Text(
                        "Referral history",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xffab0d07),
                            fontFamily: "Roboto_thin"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
