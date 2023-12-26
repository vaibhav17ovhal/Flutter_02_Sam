import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/controller.dart';
import 'course_detail.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  GetxControllers controller = Get.put(GetxControllers());

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
                "My Courses",
                style: TextStyle(
                    color: Colors.grey.shade800, fontWeight: FontWeight.w500),
              ),
              bottom: TabBar(
                dividerColor: Colors.grey.shade100,
                indicatorColor: Colors.grey,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(24),
                    right: Radius.circular(24),
                  ),
                  color: Colors.redAccent.shade700,
                ),
                tabs: const <Widget>[
                  Tab(
                    iconMargin: EdgeInsets.only(bottom: 10),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Ongoing"),
                    ),
                  ),
                  Tab(
                    iconMargin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Upcoming"),
                    ),
                  ),
                  Tab(
                    iconMargin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Completed"),
                    ),
                  ),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Get.to(()=> const CourseDetails());
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      //padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(controller.courses[index],
                                  fit: BoxFit.cover, height: 80, width: 120),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wonderland\nChristmas Carnival",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(
                                      height: h/90,
                                    ),
                                    Text(
                                      "13 Dec - 13 Dec\n1:45 PM-3:15 PM",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                          fontFamily: "Roboto_thin"
                                      ),
                                    )
                                  ]),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.grey.shade800,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Get.to(()=> const CourseDetails());
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      //padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(controller.courses[index],
                                  fit: BoxFit.cover, height: 80, width: 120),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wonderland\nChristmas Carnival",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(
                                      height: h/90,
                                    ),
                                    Text(
                                      "13 Dec - 13 Dec\n1:45 PM-3:15 PM",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontFamily: "Roboto_thin"
                                      ),
                                    )
                                  ]),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.grey.shade800,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Get.to(()=> const CourseDetails());
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      //padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(controller.courses[index],
                                  fit: BoxFit.cover, height: 80, width: 120),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wonderland\nChristmas Carnival",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontFamily: "Roboto"
                                      ),
                                    ),
                                    SizedBox(
                                      height: h/90,
                                    ),
                                    Text(
                                      "13 Dec - 13 Dec\n1:45 PM-3:15 PM",
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontFamily: "Roboto_thin"
                                      ),
                                    )
                                  ]),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.grey.shade800,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
