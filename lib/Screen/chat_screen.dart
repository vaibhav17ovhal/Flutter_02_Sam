import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: const Color(0xfffefff7),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              "My Chat",
              style: TextStyle(
                  color: Colors.grey.shade800, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color(0xff020301),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        //physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "assets/images/pic.png",
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              )),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wonderland Christmas Carnival",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Roboto_thin"),
                              ),
                              Text(
                                "vaishali dandekar joined the community",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontFamily: "Roboto_thin"),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "14:15 PM",
                            style: TextStyle(
                                color: Colors.grey.shade800, fontFamily: "Roboto_thin"),
                          )
                        ],
                      ),
                    );
                  } ),
            ),
          ],
        ),
      ),
    );
  }
}
