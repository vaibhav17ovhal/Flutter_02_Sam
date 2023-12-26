import 'package:beauty_app/Screen/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/controller.dart';

class Four_Class extends StatefulWidget {
  const Four_Class({super.key});

  @override
  State<Four_Class> createState() => _Four_ClassState();
}

class _Four_ClassState extends State<Four_Class> {
  GetxControllers controller = Get.put(GetxControllers());
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        iconTheme: IconThemeData(
            color: Color(0xff020301)
        ),
        // automaticallyImplyLeading: false,
        elevation: 1,
        // leading: IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Color(0xff020301),
        //   ),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Charcoal Face Gel Scrub",
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto_thin"),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey.shade800,),
              onPressed: (){
                Get.to(AddCart());
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/pic2.png",
              height: h/4,
              fit: BoxFit.cover,
            ),
            //SizedBox(height: h/40),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
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
                                width: w/3.4,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Charcoal Face Gel Scrub",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 20,
                                  //fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.grey.shade800,
                            )
                          ],
                        ),
                        SizedBox(
                          height: h/60,
                        ),
                        Text(
                            'Step into the enchanting world of holiday magic\n'
                                'and joy at the Festive Wonderland Christmas\n'
                                'Carnival. This annual extravaganza invites\n'
                                'participants to create theis own stalls, turning.',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: "Roboto_thin_01",
                              fontSize: 17,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Text("\u20b9 49", style: TextStyle(fontFamily: "Roboto", color: Colors.red, fontSize: 18),),
                              SizedBox(width: w/30,),
                              Text("\u20b9 99", style: TextStyle(decoration: TextDecoration.lineThrough,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                              SizedBox(width: w/30,),
                              Text("50% off", style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: h/60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.alarm,
                                  color: Color(0xffab0d07),
                                ),
                                SizedBox(
                                  width: w/30,
                                ),
                                Text(
                                  "Duration",
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 18,
                                      fontFamily: "Roboto_thin",
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "13h 42min",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h/60,
                        ),
                        Divider(),
                        SizedBox(
                          height: h/60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.language,
                                  color: Color(0xffab0d07),
                                ),
                                SizedBox(
                                  width: w/30,
                                ),
                                Text(
                                  "Language",
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 18,
                                      fontFamily: "Roboto_thin",
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "English",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18,
                                  fontFamily: "Roboto_thin",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h/60,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/30,
                  ),
                  Container(

                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: h/100,
                        ),
                        SizedBox(
                          height: h/13,width: w,
                          child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                Padding(
                                  padding: const EdgeInsets.only(right: 27),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(controller.img[index], scale: 14,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          controller.imgname[index],
                                          style: TextStyle(
                                              color: Colors.grey.shade800,
                                              fontSize: 13,
                                              fontFamily: "Roboto_thin",
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                          ),
                        ),
                        SizedBox(
                          height: h/60,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h/30,
                  ),
                  Container(
                    height: h/2.5,
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Meet Your Instructor", style: TextStyle(fontSize: 20),),
                          SizedBox(
                            height: h/60,
                          ),
                          Divider(),
                          SizedBox(
                            height: h/60,
                          ),
                          Container(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/images/tonic_3.png",
                                  width: w/3,
                                  height: h/9,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: h/60,
                          ),
                          Text("Harry Brook", style: TextStyle(fontSize: 20),),
                          SizedBox(
                            height: h/80,
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
        height: h/6.9,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffe3dff3)),
              child: const Text(
                "Enter code GIFTFORYOU50 at checkout Get 50.0% OFF uoto Rs.200!",
                style: TextStyle(color: Color(0xff7755d7), fontFamily: "Roboto_thin", fontSize: 18),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(AddCart());
                  },
                  child: Container(
                    width: w/2.2,
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color(0xffab0d07), width: 1)),
                    child: const Text(
                      "Add to cart",
                      style: TextStyle(color: Color(0xffab0d07), fontFamily: "Roboto_thin", fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: w/2.2,
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
                    style: TextStyle(color: Colors.white, fontFamily: "Roboto_thin", fontSize: 18),
                    textAlign: TextAlign.center,
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
