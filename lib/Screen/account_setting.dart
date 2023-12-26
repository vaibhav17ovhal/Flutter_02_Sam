import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({super.key});

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
          "Account Setting",
          style: TextStyle( fontFamily: "Roboto_thin",
              color: Colors.grey.shade800, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(

        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(8)
        ),
        child: ListTile(
          leading: Icon(
            Icons.delete_outline,
            color: Colors.grey.shade800,
            size: 20,
          ),
          title: Text("Delete my account"
            ,style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 17,
                fontFamily: "Roboto_thin"
            ),),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey.shade800,
            size: 17,),
        ),
      ),
    );
  }
}
