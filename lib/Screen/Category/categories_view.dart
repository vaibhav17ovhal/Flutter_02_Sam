import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
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
          "All Category",
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search for...',
                  suffixIcon: Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffab0d07),
                      ),
                      child: Icon(Icons.search,
                          color: Colors.grey.shade200, size: 24))),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/3d_design-removebg-preview (1).png",
                      fit: BoxFit.cover,
                      height: h/20,
                      width: h/20,
                    ),
                    Text(
                      "3D Design",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/graphic-removebg-preview.png",
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "Graphic Design",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/web_dev-removebg-preview.png",
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "Web Developmeny",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/seo-removebg-preview.png",
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "SEO & Marketing",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/accounting-removebg-preview.png",
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "Finance & Accounting",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/personal_dev-removebg-preview.png",
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "Personal Development",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/productivity__1_-removebg-preview.png",
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "Office Productivity",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/hr-removebg-preview.png",
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "HR Management",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
