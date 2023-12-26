import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCart extends StatelessWidget {
  const AddCart({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
        title: Row(
          children: [
            Text(
              "Checkout",
              style: TextStyle(
                  color: Colors.grey.shade800, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            // Icon(
            //   Icons.shopping_cart_outlined,
            //   color: Colors.grey.shade800,
            // )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: h/50,
              ),
              Text(
                "In your cart",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto_thin",
                    fontSize: 20),
              ),
              SizedBox(
                height: h/50,
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: h/7,
                        width: w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      "assets/images/tonic_3.png",
                                      width: w/4.2,
                                      height: h/9,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: h/9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Hair Styling Tutotial", style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Roboto",
                                            fontSize: 17)),
                                        SizedBox(
                                          width: w/6,
                                        ),
                                        GestureDetector(
                                            onTap: (){},
                                            child: Icon(Icons.delete_outline, color: Color(0xffab0d07))),
                                      ],
                                    ),
                                    SizedBox(
                                      height: h/200,
                                    ),
                                    Text(
                                      "02Feb - 24 Apr",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontFamily: "Roboto_thin",
                                      ),
                                    ),
                                    SizedBox(
                                      height: h/200,
                                    ),
                                    Text(
                                      "1:00 PM - 5:00 PM",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontFamily: "Roboto_thin",
                                      ),
                                    ),
                                    SizedBox(
                                      height: h/100,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\u20b9 15000",
                                          style: TextStyle(
                                              fontFamily: "Roboto",
                                              color: Color(0xffab0d07),
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: w/30,
                                        ),
                                        Text("\u20b9 45000",
                                            style: TextStyle(
                                                decoration: TextDecoration.lineThrough,
                                                fontFamily: "Roboto_thin",
                                                color: Color(0xff020301),
                                                fontSize: 17)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h/50,
                      ),
                    ],
                  );
                },
              ),
              Text(
                "App Money",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontFamily: "Roboto_thin",
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              SizedBox(
                height: h/50,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.money_rounded,
                          color: Colors.yellowAccent.shade700,
                        ),
                        Text(
                          " Get a ",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "Roboto_thin",
                          ),
                        ),
                        Text(
                          "\u20b9 999 ",
                          style: TextStyle(
                            fontFamily: "Roboto-thin",
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "reward on activating App Money ",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "Roboto_thin",
                          ),
                        ),
                        Icon(
                          Icons.celebration,
                          color: Colors.yellowAccent.shade700,
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey.shade200),
                    Text(
                      "Activate App Money ",
                      style: TextStyle(
                          fontFamily: "Roboto-thin",
                          color: Colors.red.shade800,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h/50,
              ),
              Text(
                "Offers & Discounts",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontFamily: "Roboto_thin",
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              SizedBox(
                height: h/50,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Use code ",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "Roboto_thin",
                          ),
                        ),
                        Text(
                          "GIFTFORYOU50",
                          style: TextStyle(
                            fontFamily: "Roboto-thin",
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: (){},
                          child: Text("Apply",
                            style: TextStyle(
                              fontFamily: "Roboto-thin",
                              color: Color(0xffab0d07),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Save upto ",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "Roboto_thin",
                          ),
                        ),
                        Text(
                          "\u20b9 200",
                          style: TextStyle(
                            fontFamily: "Roboto-thin",
                            color: Colors.red.shade800,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey.shade200),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      "View all coupons",
                      style: TextStyle(
                        fontFamily: "Roboto-thin",
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h/40,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Item Total",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: "Roboto_thin",
                              fontSize: 17),
                        ),
                        Spacer(),
                        Text(
                          "\u20b9 30349",
                          style: TextStyle(
                            fontFamily: "Roboto-thin",
                            color: Colors.red.shade800,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey.shade200),
                    Row(
                      children: [
                        Text(
                          "Total Payable",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: "Roboto_thin",
                              fontSize: 17),
                        ),
                        Spacer(),
                        Text(
                          "\u20b9 30349",
                          style: TextStyle(
                            fontFamily: "Roboto-thin",
                            color: Colors.red.shade800,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h/100,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        height: 70,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "\u20b9 30349",
                      style: TextStyle(
                          fontFamily: "Roboto-thin",
                          color: Color(0xffab0d07),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "View Details",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontFamily: "Roboto_thin",
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  width: Get.width / 2,
                  margin: const EdgeInsets.all(4),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                      color: const Color(0xffab0d07),
                      borderRadius: BorderRadius.circular(8),
                      border:
                      Border.all(color: const Color(0xffab0d07), width: 1)),
                  child: const Text(
                    "Confirm & Pay \u20b9 30349",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto_thin"),
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
