import 'dart:io';
import 'package:beauty_app/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../Controllers/button.dart';
import '../Controllers/controller.dart';
import '../Controllers/text2.dart';
import '../Screen/bottom_navigation.dart';




class Enter_Details extends StatefulWidget {
  const Enter_Details({super.key});

  @override
  State<Enter_Details> createState() => _Enter_DetailsState();
}

class _Enter_DetailsState extends State<Enter_Details> {
  var onn = 0;
  bool _isVerifyButtonEnabled = false;
  final TextEditingController dateInput = TextEditingController();
  bool isDateSelected = false;
  bool isloading = false;
  GetxControllers controller = Get.put(GetxControllers());
  TextEditingController firstNameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();

  String? valueChoose;
  List<String> listitem = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Fill Your Details",
            style: M_app_text
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h/40,
                  ),
                  InkWell(
                    onTap: () {
                      controller.getImage();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: controller.imagePath.isNotEmpty
                          ? CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.grey.shade300,
                              backgroundImage: FileImage(
                                  File(controller.imagePath.toString())))
                          : CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.grey.shade300,
                              backgroundImage: const NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                                  scale: 10),
                            ),
                    ),
                  ),
                  SizedBox(
                    height: h/30,
                  ),
                  /*     Container(
                    height: 35,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: TextButton(
                        onPressed: () {
                          controller.getImage();
                        },
                        child: Text(
                          "Select Image",
                          style: TextStyle(color: Colors.white),
                        )),
                  )*/
                  TextFormField(
                    style: M_style_mid,
                    controller: firstNameController,
                    // onChanged: (value) {
                    //   setState(() {
                    //     _isVerifyButtonEnabled = value.length == 50;
                    //   });
                    // },
                    onTap: (){
                    },
                    /* validator: (value) {
                                        if (value!.length < 10) {
                                          return "Invalid email address";
                                        } else {
                                          return null;
                                        }
                                      },*/
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Full Name",
                      hintStyle: M_style_mid
                    ),
                  ),
                  SizedBox(
                    height: h/50,
                  ),
                  TextFormField(
                    style: M_style_mid,
                    controller: nickNameController,
                    /* validator: (value) {
                                        if (value!.length < 10) {
                                          return "Invalid email address";
                                        } else {
                                          return null;
                                        }
                                      },*/
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Nick Name",
                        hintStyle: M_style_mid
                    ),
                  ),
                  SizedBox(
                    height: h/50,
                  ),
                  TextFormField(
                    readOnly: true,
                    onTap: (){
                      _selectINDate();
                    },
                    style: M_style_mid,
                    controller: dateInput,
                    /* validator: (value) {
                                        if (value!.length < 10) {
                                          return "Invalid email address";
                                        } else {
                                          return null;
                                        }
                                      },*/
                    textInputAction: TextInputAction.next,
                    //keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.calendar_month, color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Date of Birth",
                        hintStyle: M_style_mid
                    ),
                  ),
                  SizedBox(
                    height: h/50,
                  ),
                  TextFormField(
                    style: M_style_mid,
                    //controller: nickNameController,
                    /* validator: (value) {
                                        if (value!.length < 10) {
                                          return "Invalid email address";
                                        } else {
                                          return null;
                                        }
                                      },*/
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.email, color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Email",
                        hintStyle: M_style_mid
                    ),
                  ),
                  SizedBox(
                    height: h/50,
                  ),
                  Container(
                    width: w / 1.07,
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.grey, width: 1)),
                    child: DropdownButton(style:  M_style_mid,
                      underline: SizedBox(),
                      // Initial Value
                      value: valueChoose,
                      hint: Text('Gender', style: M_style_mid),
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down,
                          color: Color(0xffab0d07)),

                      // Array list of items
                      items: listitem.map((String items) {
                        return DropdownMenuItem(

                          value: items,
                          child: Text(items),
                        );
                      }).toList(),

                      onChanged: (newvalue){
                        setState(() {
                          valueChoose = newvalue;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: h/30,
                  ),
                  Container(
                    height: h/19,
                    width: w/1,
                    child: ElevatedButton(
                        style: buttonPrimary,
                        onPressed:
                        //_isVerifyButtonEnabled ?
                            (){
                          setState(() {
                            isloading = true;
                          });
                          Future.delayed(Duration(seconds: 2), (){
                            setState(() {
                              isloading = false;
                              congr();
                              Future.delayed(Duration(seconds: 2), () => Get.to(Navi()),);
                              //Get.to(Verify());
                            });
                          });
                        }
                        //: null
                        ,
                        child: isloading? CircularProgressIndicator(color: Colors.white) :
                        Text("Continue", style: M_style_text_inside_button)),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     congr();
                  //
                  //     Future.delayed(Duration(seconds: 2), () => Get.to(Navi()),);
                  //   },
                  //   child: Container(
                  //     padding: const EdgeInsets.only(left: 8),
                  //     height: 50,
                  //     width: w / 1.2,
                  //     decoration: BoxDecoration(
                  //         color: Colors.redAccent.shade700,
                  //         borderRadius: BorderRadius.circular(25)),
                  //     child: Row(
                  //       children: [
                  //         const Spacer(),
                  //         const Text("Continue",
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Colors.white,
                  //                 fontSize: 20)),
                  //         const Spacer(),
                  //         Container(
                  //           margin: const EdgeInsets.all(2),
                  //           decoration: const BoxDecoration(
                  //             color: Colors.white,
                  //             shape: BoxShape.circle,
                  //           ),
                  //           child: IconButton(
                  //             onPressed: () {
                  //               congr();
                  //               Future.delayed(Duration(seconds: 2), () => Get.to(Navi()),);
                  //             },
                  //             icon: Icon(
                  //               Icons.arrow_forward,
                  //               color: Colors.redAccent.shade700,
                  //             ),
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
  void congr() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          child: AlertDialog(

            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            content: SizedBox(
                height: 380,
                width: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child:
                        Image.asset("assets/images/Screenshot__30_-removebg-preview.png", scale: 1.7)),
                    SizedBox(
                        height: 15),
                    Center(
                      child: Text(
                          "Congratulations",
                        style: M_style_text_head2
                          ),
                    ),
                    SizedBox(
                        height: 15),
                    Center(
                      child: Text(
                        "Your Account is ready to use.\nYou will be redirected to the Home Page in a Few Seconds.",
                        style: M_style_mid
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: CircularProgressIndicator(

                      ),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
  void _selectINDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.highContrastLight(primary: Colors.redAccent.shade700),
            dialogBackgroundColor: Colors.white,
            textTheme: TextTheme(bodyText1: M_style_mid),
            //dialogTheme: DialogTheme(backgroundColor: Colors.black)
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() {
        dateInput.text = formattedDate;
      });
    }
  }
}
