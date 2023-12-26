import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color(0xfffefff7),
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
          "Frequently Asked Questions",
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.all(8),
              iconColor: Colors.grey.shade800,
              title: Text(
                "Who designs the course?",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                ),
              ),
              children: [
                Text(
                  "All our courses are designed by course curators along with the",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: "Roboto_thin",
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade200),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.all(8),
              iconColor: Colors.grey.shade800,
              title: Text(
                "Will everything in the course be covered in the class?",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                ),
              ),
              children: [
                Text(
                  "All our courses are designed by course curators along with the",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: "Roboto_thin",
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade200),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.all(8),
              iconColor: Colors.grey.shade800,
              title: Text(
                "How will the class be conducted?",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                ),
              ),
              children: [
                Text(
                  "All our courses are designed by course curators along with the",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: "Roboto_thin",
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade200),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.all(8),
              iconColor: Colors.grey.shade800,
              title: Text(
                "Are these recorded classes or LIVE?",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                ),
              ),
              children: [
                Text(
                  "All our courses are designed by course curators along with the",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: "Roboto_thin",
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade200),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.all(8),
              iconColor: Colors.grey.shade800,
              title: Text(
                "What if i am not available during class timings?",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                ),
              ),
              children: [
                Text(
                  "All our courses are designed by course curators along with the",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: "Roboto_thin",
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade200),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.all(8),
              iconColor: Colors.grey.shade800,
              title: Text(
                "Can I do it with instructor?",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                ),
              ),
              children: [
                Text(
                  "All our courses are designed by course curators along with the",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: "Roboto_thin",
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade200),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.all(8),
              iconColor: Colors.grey.shade800,
              title: Text(
                "How to see my orders?",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontFamily: "Roboto_thin",
                ),
              ),
              children: [
                Text(
                  "All our courses are designed by course curators along with the",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: "Roboto_thin",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
