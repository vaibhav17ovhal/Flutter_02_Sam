import 'package:beauty_app/Sign_in/Register.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onboarding/onboarding.dart';

import '../Log_in/login.dart';


class ONborad extends StatefulWidget {
  const ONborad({super.key});

  @override
  State<ONborad> createState() => _ONboradState();
}

class _ONboradState extends State<ONborad> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                    vertical: 90.0,
                  ),
                  child: Image.asset(
                    'assets/images/IMG-20231123-WA0000.jpg', scale: 0.5,
                  ),
                ),
                Text(
                  "Empowering the World \nof Beauty by Education",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff0c1037),
                      fontSize: 15,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                    vertical: 90.0,
                  ),
                  child: Image.asset(
                    'assets/images/IMG-20231123-WA0001.jpg', scale: 0.5,
                  ),
                ),
                Text(
                  "Hair Style Make up Hair Design \nStream Full Session with Description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff0c1037),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                    vertical: 90.0,
                  ),
                  child: Image.asset(
                    'assets/images/IMG-20231123-WA0002.jpg', scale: 0.5,
                  ),
                ),
                Text(
                  "Anytime Anywhere \nGain Knowledge with Practice",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff0c1037),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                    vertical: 90.0,
                  ),
                  child: Image.asset(
                    'assets/images/IMG-20231123-WA0003.jpg', scale: 0.5,
                  ),
                ),
                Text(
                  "Happy Hair Stand for latest Design \n And Creation Across the World",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    color: Color(0xff0c1037),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                    vertical: 90.0,
                  ),
                  child: Image.asset(
                    'assets/images/IMG-20231123-WA0004.jpg', scale: 0.5,
                  ),
                ),
                Text(
                  "Access Unlimited Video as per Your Choice",
                  style: TextStyle(
                    color: Color(0xff0c1037),
                    fontSize: 15,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    // getvali().whenComplete(()async{
    //   Timer(Duration(milliseconds: 1),()=> Navigator.push(context, MaterialPageRoute(builder: (context) {
    //     return  finalname == null ? Login(): Signup();
    //   },))
    //   );});

    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: Colors.white,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 4;
            setIndex(4);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Skip',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  TextButton get _signupButton {
    return TextButton(
        onPressed: (){
          Get.to(Login01());
        },
        child: Text("Get Started", style: TextStyle(color: Color(0xffab0d07), fontWeight: FontWeight.bold, fontSize: 17),));
  }

  var q;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Onboarding(
              pages: onboardingPagesList,
              onPageChange: (int pageIndex) {
                index = pageIndex;
              },
              startPageIndex: 0,
              footerBuilder: (context, dragDistance, pagesLength, setIndex) {
                return DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    child: ColoredBox(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(45.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIndicator(
                              netDragPercent: dragDistance,
                              pagesLength: pagesLength,
                              indicator: Indicator(
                                activeIndicator: ActiveIndicator(
                                  color: Colors.red,
                                ),
                                closedIndicator: ClosedIndicator(
                                  color: Colors.red,
                                ),
                                indicatorDesign: IndicatorDesign.polygon(
                                    polygonDesign: PolygonDesign(
                                        polygon: DesignType.polygon_circle)),
                              ),
                            ),
                            index == pagesLength - 1
                                ? _signupButton
                                : _skipButton(setIndex: setIndex)
                          ],
                        ),
                      ),
                    ));
              }),
        ));
  }

  void qwer() {
    setState(() {
      //q = AppLocalizations.of(context)!.choose_role;
    });
    print(q);
  }
}

