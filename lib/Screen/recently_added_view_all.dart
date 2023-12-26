import 'package:beauty_app/Screen/Free_Classes/003.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Free_Classes/002.dart';

class Recenly_View_all extends StatelessWidget {
  const Recenly_View_all({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
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
        title: Text(
          "Recently Added Courses",
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Get.to(Third_Class());
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                height: h / 2.6,
                width: w,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 10,  bottom: 10),
                  child: Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      height: 200,
                      width: w / 1.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: <Widget>[
                            SizedBox(
                              height: h / 4.3,
                              //width: w / 1,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    "assets/images/pic2.png",
                                    fit: BoxFit.cover,
                                    width: Get.width,
                                  )),
                            ),
                            Positioned(
                                top: 10,
                                child: Row(
                                  children: [
                                    Container(
                                      height: h / 30,
                                      width: w / 5,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Center(
                                          child: Text(
                                            "Recorded",
                                            style: TextStyle(
                                                color: Color(0xfffefff7),
                                                fontFamily: "Roboto_thin"),
                                          )),
                                    ),
                                    SizedBox(
                                      width: w / 1.9,
                                    ),
                                    Container(

                                      height: h / 33,
                                      width: w / 8,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfffefff7),
                                        borderRadius: BorderRadius.circular(15),
                                        //border: Border.all(width: 1)
                                      ),
                                      child: const Center(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              Text(
                                                "4.2",
                                                style: TextStyle(
                                                    color: Color(0xff020301),
                                                    fontFamily: "Roboto_thin",
                                                    fontSize: 15),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                )),
                            /*  Positioned(
                              left: 120,
                              bottom: 20,
                              child: CustomIndicator(
                                currentIndex: _currentIndex03,
                                itemCount: 3,
                              ),
                            )*/
                          ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Product Formulation",
                                  style: TextStyle(
                                    color: Color(0xffab0d07),
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Hair Styling",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: "Roboto_thin"),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "1 Day",
                                  style: TextStyle(fontFamily: "Roboto_thin"),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "\u20b9 1499",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          color: Colors.red,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: w / 30,
                                    ),
                                    const Text("\u20b9 2999",
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.lineThrough,
                                            fontFamily: "Roboto_thin",
                                            color: Color(0xff020301),
                                            fontSize: 18)),
                                    SizedBox(
                                      width: w / 30,
                                    ),
                                    const Text("50% off",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontFamily: "Roboto_thin",
                                            color: Color(0xff020301),
                                            fontSize: 18)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
