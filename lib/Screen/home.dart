import 'package:beauty_app/Screen/Free_Classes/001.dart';
import 'package:beauty_app/Screen/Free_Classes/002.dart';
import 'package:beauty_app/Screen/Free_Classes/003.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/controller.dart';
import '../Controllers/text2.dart';
import 'Category/categories_view.dart';
import 'cart_screen.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'custom_indicator.dart';
import 'free_demo_view_all.dart';
import 'popular_view_all.dart';
import 'recently_added_view_all.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  GetxControllers controller = Get.put(GetxControllers());
  int _currentIndex = 0;
  int _currentIndex01 = 0;
  int _currentIndex02 = 0;
  int _currentIndex03 = 0;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: (Text("Sam and Jas", style: M_style_title)
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 7, bottom: 7),
                  child: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Color(0xffc6c6c6),width: 1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: IconButton(
                        onPressed:
                        (){},
                        icon: Row(
                          children: [
                            Icon(Icons.money, color: Color(0xffFFD700),),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text("\u20b9 0",style: TextStyle(color: Colors.black),),
                            )
                          ],
                        ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(AddCart());
                  },
                  child: Icon(Icons.shopping_cart_outlined, color: Color(0xffab0d07)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: (){
                      //Get.to(AddCart());
                    },
                    child: Icon(Icons.notifications_active_outlined, color: Color(0xffab0d07)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body:
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                        Column(
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                viewportFraction: 1.0,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                aspectRatio: 1.40,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                              ),
                              items: [
                                TRoundedImage(imageUrl: "assets/images/banner2.jpg"),
                                TRoundedImage(imageUrl: "assets/images/banner3.jpg"),
                                TRoundedImage(imageUrl: "assets/images/banner4.jpg")
                              ],
                            ),
                            SizedBox(
                              height: h/50,
                            ),
                            CustomIndicator(
                              currentIndex: _currentIndex,
                              itemCount: 3,
                            ),
                          ],
                        ),
                      SizedBox(
                        height: h/40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text("Our ", style: M_app_text01),
                                  Text("Courses", style: M_app_text02),
                                ],
                              ),
                              Image.asset("assets/images/images__3_-removebg-preview.png", scale: 11),
                            ],
                          ),

                          TextButton(
                              onPressed: (){
                                Get.to(ViewScreen());
                              },
                              child: Text("More", style: M_style_text_button))
                        ],
                      ),
                      SizedBox(
                        height: h/100,
                      ),
                      Container(
                        height: h/6.5,
                        width: w,
                        color: Colors.white,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: controller.category.length,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 18),
                                  child:
                                  InkWell(
                                    onTap: () {
                                      Get.to((controller.direct[index]));
                                    },
                                    child:
                                    Container(
                                      width: w / 3.5,
                                      height: h / 9,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffffbfec),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: -1,
                                            //top: 10,
                                            right: -1
                                            ,child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.asset(controller.category[index],
                                                  scale: 8),
                                            ),
                                          ),
                                          Positioned(
                                            // top: -1,
                                            // //top: 10,
                                            // left: -1
                                            child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(controller.tags[index],
                                                scale: 8),
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(60),
                                    //
                                    //   ),
                                    //   child: Obx( ()=>
                                    //       Column(
                                    //         children: [
                                    //           CircleAvatar(
                                    //               radius: 40,
                                    //               backgroundImage:
                                    //               AssetImage(controller.category[index])
                                    //           ),
                                    //
                                    //           Padding(
                                    //             padding: const EdgeInsets.only(top: 5),
                                    //             child: Text(controller.tags[index], style: TextStyle(color: Colors.grey),),
                                    //           )
                                    //         ],
                                    //       ),
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h/35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Free Demo Classes", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, fontFamily: "Roboto")),
                          TextButton(
                              onPressed: (){
                                Get.to(Free_View_all());
                              },
                              child: Text("View all", style: TextStyle(color: Color(0xffab0d07)),))
                        ],
                      ),
                      Container(
                        height: h / 2.4,
                        width: w,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                   left:5, right: 10,top: 15, bottom: 10),
                              child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(15),
                                child: SizedBox(
                                  height: 200,
                                  width: w / 1.5,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: <Widget>[
                                          SizedBox(
                                            height: h / 5.4,
                                            //width: w / 1,
                                            child: ClipRRect(
                                              // borderRadius: const BorderRadius.only(
                                              //     topLeft: Radius.circular(10),
                                              //     topRight: Radius.circular(10)
                                              // ),
                                              child:
                                              CarouselSlider(
                                                options: CarouselOptions(
                                                  viewportFraction: 1.0,
                                                  autoPlay: false,
                                                  enlargeCenterPage: true,
                                                  aspectRatio: 1.8,
                                                  onPageChanged: (index, reason) {
                                                    setState(() {
                                                      _currentIndex01 = index;
                                                    });
                                                  },
                                                ),
                                                items: [
                                                  InkWell(child: InnerRound(imageUrl01: "assets/images/banner001.jpeg"),
                                                    onTap: (){
                                                        Get.to(First_Class());
                                                    },
                                                  ),
                                                  InkWell(child: InnerRound(imageUrl01: "assets/images/banner002.jpg"),
                                                  onTap: (){
                                                    Get.to(First_Class());
                                                  },
                                                  ),
                                                  InkWell(child: InnerRound(imageUrl01: "assets/images/banner003.jpg"),
                                                  onTap: (){
                                                    Get.to(First_Class());
                                                  },),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 10,
                                              child: Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                            height: h/30,
                                            width: w/5,
                                            decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Center(child: Text("Recorded",style: TextStyle(color: Color(0xfffefff7), fontFamily: "Roboto_thin"),)),
                                          ),
                                                  SizedBox(
                                                    width: w/3.2,
                                                  ),
                                                  Container(
                                                    height: h/33,
                                                    width: w/8,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xfffefff7),
                                                        borderRadius: BorderRadius.circular(15),
                                                        //border: Border.all(width: 1)
                                                    ),
                                                    child: Center(child: Row(
                                                      children: [
                                                        Icon(Icons.star, color: Colors.amber,),
                                                        Text("4.5",style: TextStyle(color: Color(0xff020301), fontFamily: "Roboto_thin", fontSize: 15),),
                                                      ],
                                                    )),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Positioned(
                                            left: 120,
                                            bottom: 20,

                                            child: CustomIndicator(
                                            currentIndex: _currentIndex01,
                                            itemCount: 3,
                                          ),)
                                  ]

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,top: 2, bottom: 5),
                                        child: Column(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                                onPressed: (){},
                                                child: Text("Free Demo Courses", style: TextStyle(color: Color(0xffab0d07)),)),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Hair Styling",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "Roboto_thin"),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8, top: 20),
                                              child: Text("11 Hours 20 Minutes Course", style: TextStyle(fontFamily: "Roboto_thin"),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8, top: 20),
                                              child: Row(
                                                children: [
                                                  Text("\u20b9 0", style: TextStyle(fontFamily: "Roboto", color: Colors.red, fontSize: 18),),
                                                  SizedBox(width: w/30,),
                                                  Text("\u20b9 2999", style: TextStyle(decoration: TextDecoration.lineThrough,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                                                  SizedBox(width: w/30,),
                                                  Text("100% off", style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h/30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recently Added Courses", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, fontFamily: "Roboto")),
                          TextButton(
                              onPressed: (){
                                Get.to(Recenly_View_all());
                              },
                              child: Text("View all", style: TextStyle(color: Color(0xffab0d07)),))
                        ],
                      ),
                      Container(
                        height: h / 2.4,
                        width: w,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left:5, right: 10,top: 15, bottom: 10),
                              child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(15),
                                child: SizedBox(
                                  height: 200,
                                  width: w / 1.5,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: <Widget>[
                                         SizedBox(
                                          height: h / 5.4,
                                          //width: w / 1,
                                          child: ClipRRect(
                                            // borderRadius: const BorderRadius.only(
                                            //     topLeft: Radius.circular(10),
                                            //     topRight: Radius.circular(10)
                                            // ),
                                            child:
                                            CarouselSlider(
                                              options: CarouselOptions(
                                                viewportFraction: 1.0,
                                                autoPlay: false,
                                                enlargeCenterPage: true,
                                                aspectRatio: 1.8,
                                                onPageChanged: (index, reason) {
                                                  setState(() {
                                                    _currentIndex02 = index;
                                                  });
                                                },
                                              ),
                                              items: [
                                                InkWell(child: InnerRound(imageUrl01: "assets/images/banner01.jpg"),
                                                onTap: (){
                                                  Get.to(Third_Class());
                                                },),
                                                InkWell(child: InnerRound(imageUrl01: "assets/images/banner02.jpg"),
                                                    onTap: (){
                                                      Get.to(Third_Class());
                                                    }),
                                                InkWell(child: InnerRound(imageUrl01: "assets/images/banner03.jpg"),
                                                    onTap: (){
                                                      Get.to(Third_Class());
                                                    }),
                                              ],
                                            ),
                                          ),
                                        ),
                                          Positioned(
                                              top: 10,
                                              child: Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height: h/30,
                                                    width: w/5,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius: BorderRadius.circular(5)
                                                    ),
                                                    child: Center(child: Text("Recorded",style: TextStyle(color: Color(0xfffefff7), fontFamily: "Roboto_thin"),)),
                                                  ),
                                                  SizedBox(
                                                    width: w/3.2,
                                                  ),
                                                  Container(
                                                    height: h/33,
                                                    width: w/8,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xfffefff7),
                                                      borderRadius: BorderRadius.circular(15),
                                                      //border: Border.all(width: 1)
                                                    ),
                                                    child: Center(child: Row(
                                                      children: [
                                                        Icon(Icons.star, color: Colors.amber,),
                                                        Text("4.0",style: TextStyle(color: Color(0xff020301), fontFamily: "Roboto_thin", fontSize: 15),),
                                                      ],
                                                    )),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Positioned(
                                            left: 120,
                                            bottom: 20,

                                            child: CustomIndicator(
                                              currentIndex: _currentIndex02,
                                              itemCount: 3,
                                            ),)
    ]),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,top: 2, bottom: 5),
                                        child: Column(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                                onPressed: (){},
                                                child: Text("Recently Added", style: TextStyle(color: Color(0xffab0d07)),)),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Hair Styling",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "Roboto_thin"),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8, top: 20),
                                              child: Text("11 Hours 20 Minutes Course", style: TextStyle(fontFamily: "Roboto_thin"),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8, top: 20),
                                              child: Row(
                                                children: [
                                                  Text("\u20b9 1499", style: TextStyle(fontFamily: "Roboto", color: Colors.red, fontSize: 18),),
                                                  SizedBox(width: w/30,),
                                                  Text("\u20b9 2999", style: TextStyle(decoration: TextDecoration.lineThrough,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                                                  SizedBox(width: w/30,),
                                                  Text("50% off", style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h/30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular Courses", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, fontFamily: "Roboto")),
                          TextButton(
                              onPressed: (){
                                Get.to(Popular_View_All());
                              },
                              child: Text("View all", style: TextStyle(color: Color(0xffab0d07)),))
                        ],
                      ),
                      Container(
                        height: h / 2.4,
                        width: w,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left:5, right: 10,top: 15, bottom: 10),
                              child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(15),
                                child: SizedBox(
                                  height: 200,
                                  width: w / 1.5,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: <Widget>[
                                        SizedBox(
                                          height: h / 5.4,
                                          //width: w / 1,
                                          child: ClipRRect(
                                            // borderRadius: const BorderRadius.only(
                                            //     topLeft: Radius.circular(10),
                                            //     topRight: Radius.circular(10)
                                            // ),
                                            child:
                                            CarouselSlider(
                                              options: CarouselOptions(
                                                viewportFraction: 1.0,
                                                autoPlay: false,
                                                enlargeCenterPage: true,
                                                aspectRatio: 1.8,
                                                onPageChanged: (index, reason) {
                                                  setState(() {
                                                    _currentIndex03 = index;
                                                  });
                                                },
                                              ),
                                              items: [
                                                InkWell(child: InnerRound(imageUrl01: "assets/images/banner01.jpg"),
                                                  onTap: (){
                                                    Get.to(Second_Class());
                                                  }),
                                                InkWell(child: InnerRound(imageUrl01: "assets/images/banner01.jpg"),
                                                    onTap: (){
                                                      Get.to(Second_Class());
                                                    }),
                                                InkWell(child: InnerRound(imageUrl01: "assets/images/banner01.jpg"),
                                                    onTap: (){
                                                      Get.to(Second_Class());
                                                    }),
                                              ],
                                            ),
                                          ),
                                        ),
                                          Positioned(
                                              top: 10,
                                              child: Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height: h/30,
                                                    width: w/5,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius: BorderRadius.circular(5)
                                                    ),
                                                    child: Center(child: Text("Live",style: TextStyle(color: Color(0xfffefff7), fontFamily: "Roboto_thin"),)),
                                                  ),
                                                  SizedBox(
                                                    width: w/3.2,
                                                  ),
                                                  Container(
                                                    height: h/33,
                                                    width: w/8,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xfffefff7),
                                                      borderRadius: BorderRadius.circular(15),
                                                      //border: Border.all(width: 1)
                                                    ),
                                                    child: Center(child: Row(
                                                      children: [
                                                        Icon(Icons.star, color: Colors.amber,),
                                                        Text("4.8",style: TextStyle(color: Color(0xff020301), fontFamily: "Roboto_thin", fontSize: 15),),
                                                      ],
                                                    )),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Positioned(
                                            left: 120,
                                            bottom: 20,
                                            child: CustomIndicator(
                                              currentIndex: _currentIndex03,
                                              itemCount: 3,
                                            ),)
                                      ]),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,top: 2, bottom: 5),
                                        child: Column(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                                onPressed: (){},
                                                child: Text("Popular Courses", style: TextStyle(color: Color(0xffab0d07)),)),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Hair Styling",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "Roboto_thin"),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8, top: 20),
                                              child: Text("11 Hours 20 Minutes Course", style: TextStyle(fontFamily: "Roboto_thin"),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8, top: 20),
                                              child: Row(
                                                children: [
                                                  Text("\u20b9 7799", style: TextStyle(fontFamily: "Roboto", color: Colors.red, fontSize: 18),),
                                                  SizedBox(width: w/30,),
                                                  Text("\u20b9 12999", style: TextStyle(decoration: TextDecoration.lineThrough,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                                                  SizedBox(width: w/30,),
                                                  Text("60% off", style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Roboto_thin", color: Color(0xff020301), fontSize: 18)),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                          ],
                        ),
                      ),
                Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.red.shade200
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 2, right: 2),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text("Lets see what our customers have to say about us.", style: TextStyle(fontSize: 22, fontFamily: "Roboto"),),
                        ),
                        SizedBox(
                          height: h/20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,),
                          child: Container(
                            height: h / 2.0,
                            //width: w,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left:5, right: 10,top: 15, bottom: 0),
                                          child: Material(
                                            elevation: 2,
                                            borderRadius: BorderRadius.circular(15),
                                            child: SizedBox(
                                              height: h/1.6,
                                              width: w / 1.5,
                                              child: Column(
                                                //mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 10, top: 10),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Icon((Icons.star),color: Colors.amber,),
                                                          Icon((Icons.star),color: Colors.amber,),
                                                          Icon((Icons.star),color: Colors.amber,),
                                                          Icon((Icons.star),color: Colors.amber,),
                                                          Icon((Icons.star),color: Colors.amber,),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: h/10,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 15, left: 15),
                                                      child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.", style: TextStyle(fontFamily: "Roboto_thin", letterSpacing: 1, fontSize: 15),),
                                                    ),
                                                    SizedBox(
                                                      height: h/10,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 15),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Anonymous", style: TextStyle(fontFamily: "Roboto"),),
                                                          SizedBox(
                                                            height: h/200,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text("With Sam and Jas", style: TextStyle(fontFamily: "Roboto_thin"),),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 15),
                                                                child: Icon(Icons.thumb_up_alt, color: Colors.green,size: 20),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 7),
                                                                child: Text("Verified User",style: TextStyle(fontFamily: "Roboto_thin")),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 30,
                                          top: 1,
                                            child: Obx(() =>
                                          CircleAvatar(
                                              radius: 33,
                                              backgroundImage:
                                              AssetImage(controller.users[index])
                                          ),
                                        )
                                        )
                                      ],
                                    );


                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
              ),
            ),
    );
  }
}

class TRoundedImage extends StatelessWidget {
  final String imageUrl;
  const TRoundedImage({
    super.key,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image(image: AssetImage(imageUrl))),
    );
  }
}
class InnerRound extends StatelessWidget {
  final String imageUrl01;

  const InnerRound({
    super.key,
    required this.imageUrl01
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: w / 1.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
      ),
      child: ClipRRect(borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18)),
          child: Image(image: AssetImage(imageUrl01),
            fit: BoxFit.fill,)),
    );
  }
}