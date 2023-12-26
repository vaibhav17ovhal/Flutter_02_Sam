import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefff7),
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
          "About Us",
          style: TextStyle(
              color: Colors.grey.shade800,
              fontFamily: "Roboto_thin",
              fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.",
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 17,
                  letterSpacing: 1,
                  fontFamily: "Roboto_thin")),
          SizedBox(
            height: 5,
          ),
          Divider(color: Colors.grey.shade200),
          SizedBox(
            height: 5,
          ),
          Text(
              "Lorem ipsum dolor sit amet, voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui commodo consequat. in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiea dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet,",
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 17,
                  letterSpacing: 1,
                  fontFamily: "Roboto_thin"))
        ],
      ),
    );
  }
}
