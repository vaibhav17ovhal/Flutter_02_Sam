import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({super.key});

  @override
  Widget build(BuildContext context) {
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
          "Term & Condition",
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Condition & Attending",
            style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              letterSpacing: 1,
                fontFamily: "Roboto_thin"
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Terms & Use",
            style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              letterSpacing: 1,
              fontFamily: "Roboto_thin"
            ),
          ),
        ],
      ),
    );
  }
}
