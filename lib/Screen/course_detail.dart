import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view_detail_screen.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: const Color(0xfffefff7),
        automaticallyImplyLeading: false,
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
              "Course Details",
              style: TextStyle(
                  color: Colors.grey.shade800, fontWeight: FontWeight.w500, fontFamily: "Roboto_thin",),
            ),
            const Spacer(),
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.black,),
              itemBuilder: (_) {
                return [
                  PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => ViewCourseDetailsScreen());
                        },
                        child: Text(
                          "View Course Details",
                          style: TextStyle(fontSize: 18, fontFamily: "Roboto_thin"),
                        ),
                      )),
                ];
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset("assets/images/pic.png",
                            fit: BoxFit.cover, height: 70, width: 100),
                      ),
                      // const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wonderland Christmas Carnival",
                                style: TextStyle(
                                  color: Colors.grey.shade800, fontFamily: "Roboto",
                                  fontSize: 18,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),

                              // const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "13 Dec - 13 Dec\n1:45 PM-3:15 PM",
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 18,
                                      fontFamily: "Roboto_thin"
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h/70,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: h/70,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: w/2.4,
                              margin: EdgeInsets.only(
                                  left: 3, right: 3, top: 8, bottom: 8),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    width: 1,
                                    color: const Color(0xffab0d07),
                                  )),
                              child: Text(
                                "Join Discussion",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffab0d07),
                                  fontFamily: "Roboto_thin",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Query solving",
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontFamily: "Roboto_thin",
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: w/50,
                      ),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: w/2.4,
                            margin: const EdgeInsets.only(
                                left: 3, right: 3, top: 8, bottom: 8),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey.shade300,
                                )),
                            child: Text(
                              "View Ebook",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 18,
                                fontFamily: "Roboto_thin",
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Course material",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 18,
                                fontFamily: "Roboto_thin",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h/80,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcoming class",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 20),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: h/80,
                  ),
                  Row(
                    children: [
                      Text(
                        "Day 1",
                        style:
                        TextStyle(color: Colors.grey.shade500, fontSize: 18, fontFamily: "Roboto_thin"),
                      ),
                      SizedBox(
                        width: w/20,
                      ),
                      Text(
                        "Live at 1:45 PM - 3:15 PM",
                        style: TextStyle(color: Color(0xffab0d07), fontFamily: "Roboto_thin", fontSize: 18),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: w/20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: h/10,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "13",
                              style: TextStyle(
                                  color: Color(0xffab0d07), fontFamily: "Roboto_thin", fontSize: 18),
                            ),
                            Text(
                              "-",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontFamily: "Roboto_thin", fontSize: 18),
                            ),
                            Text(
                              "DEC",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontFamily: "Roboto_thin", fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: w/25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How to Participate : Rules &\nRegulation",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Roboto_thin",
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "-If you're a formulator, baker or in\n any category would like to \nsell your products and talk about\n them or just showcase your \ntalent then this opportunity\n is for you to come and \nshine.",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontFamily: "Roboto_thin", fontSize: 18),
                            maxLines: 8,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h/80,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Here's Your certificate",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto_thin",
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: h/80,
                  ),
                  Text(
                    "After completing the course, you can download your course certificate from here.",
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto_thin",
                    ),
                    maxLines: 2,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1.5,
                          color: Colors.grey.shade300,
                        )),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Download Certificate",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontFamily: "Roboto_thin",
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
