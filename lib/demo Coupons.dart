import 'package:flutter/material.dart';

import 'main.dart';

class demoCoupons extends StatefulWidget {
  const demoCoupons({super.key});

  @override
  State<demoCoupons> createState() => _demoCouponsState();
}

class _demoCouponsState extends State<demoCoupons> {
  List all=[
    {
      "images": "images/fliplogo.png",
      "text1": "All",
      "text2": "Rewards",
    },
    {
      "images": "images/super-coin-logo-.png",
      "text1": "Super Coin",
      "text2": "Zone",
    },
    {
      "images": "images/R.png",
      "text1": "Game",
      "text2": "Zone",
    },
    {
      "images": "images/infra6k6.png",
      "text1": "Videos",
      "text2": "",
    },
  ];
  List coupons=[
    {
      "poster": "images/Dineout-Predict-Win.jpg",
      "text1": "Ultimate Prizes Await",
      "text2": "Predict and win* a car!",
      "color":Colors.blue.shade100,
      "style1":TextStyle(fontSize: width*0.06,fontWeight: FontWeight.w600),
      "style2": TextStyle(fontSize: width*0.025,fontWeight: FontWeight.w600,
      ),
    },
    {
      "poster": "images/g4t7yb1n.png",
      "text1": "Get Extra~200 discount",
      "text2": "Women's Pass",
      "color":Colors.green.shade100,
      "style1":TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w600,),
      "style2": TextStyle(fontSize: width*0.03,fontWeight: FontWeight.w600),

    },
    {
      "poster": "images/download (2).jpeg",
      "text1": "Energy Efficient Fans",
      "text2": "Extra 10% Off*",
      "color":Colors.red.shade100,
      "style1":TextStyle(fontSize: width*0.045,fontWeight: FontWeight.w600),
      "style2": TextStyle(fontSize: width*0.035,fontWeight: FontWeight.w600),
    },
    {
      "poster": "images/A320neo_Indigo28129.jpg",
      "text1": "Flights",
      "text2": "10-15% Off on Flights Booking",
      "color":Colors.indigo.shade100,
      "style1":TextStyle(fontSize: width*0.038,fontWeight: FontWeight.w600),
      "style2": TextStyle(fontSize: width*0.038,fontWeight: FontWeight.w600),
    },
    {
      "poster": "images/ihf8agct.png",
      "text1": "Hotels",
      "text2": "Upto 40% Off on Premium Hotels",
      "color":Colors.brown.shade100,
      "style1":TextStyle(fontSize: width*0.030,fontWeight: FontWeight.w600),
      "style2": TextStyle(fontSize: width*0.043,fontWeight: FontWeight.w600),
    },
    {
      "poster": "images/super-coin-logo-.png",
      "text1": "More Rewards & Coupons",
      "text2": "Get Up to 100% Off using Coins",
      "color":Colors.yellow.shade100,
      "style1":TextStyle(fontSize: width*0.025,fontWeight: FontWeight.w600),
      "style2": TextStyle(fontSize: width*0.046,fontWeight: FontWeight.w600),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[700],
        toolbarHeight: width*0.17,
        title: Text("Coupons",
          style: TextStyle(
              fontSize: width*0.047,
              fontWeight: FontWeight.w400
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(width*0.06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.search,
                    size: width*0.065),
                SizedBox(width: width*0.05,),
                Icon(Icons.keyboard_voice,
                    size: width*0.065),
                SizedBox(width: width*0.05,),
                Icon(Icons.camera_alt,
                    size: width*0.065),
                SizedBox(width: width*0.05,),
                Icon(Icons.shopping_cart,
                    size: width*0.065),
              ],
            ),
          ),
        ],
      ),

      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: width*0.03,),
            Row(
              children: [
                SizedBox(width: width*0.03,),
                Text("See Rewards By",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.047),),
              ],
            ),
            SizedBox(height: width*0.03,),
            Divider(
              color: Colors.grey[400],
              height: width*0.001,
              indent: width*0.001,
              endIndent: width*0.001,
            ),
            Container(
              height: width*0.29,
              width: width*1,
              color: Colors.grey[100],
              child: ListView.builder(
                itemCount: all.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                // shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  SizedBox(width: width*0.03,);
                  return  Stack(
                    children: [
                      Container(
                        height: width*0.27,
                        width: width*0.25,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width*0.015),
                            child: Container(
                              height: width*0.17,
                              width: width*0.22,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      width*0.015),
                                  border: Border.all(
                                      color: Colors.grey.shade300
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    all[index]["text1"],
                                    style: TextStyle(
                                        fontSize: width*0.04
                                    ),
                                  ),
                                  Text(
                                    all[index]["text2"],
                                    style: TextStyle(
                                        fontSize: width*0.04
                                    ),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Positioned(
                          bottom: width*0.18,
                          left: width*0.08,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[50],
                            backgroundImage: AssetImage(all[index]["images"]),
                            radius: width*0.045,
                          ))
                    ],
                  );
                },


              ),
            ),
            Padding(
              padding: EdgeInsets.all(width*0.03),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Coupons",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width*0.047),),
                  Text("Add Coupon",
                    style: TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[800],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey[400],
              height: width*0.001,
              indent: width*0.001,
              endIndent: width*0.001,
            ),
            Container(
              height: width*1.42,
              width: width*1,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height:width*0.02),
                  Container(
                    height: width*1.35,
                    width: width*0.93,
                    // color: Colors.yellow,
                    child: ListView.builder(
                      itemCount:6,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: width*0.25,
                          width: width*0.97,
                          margin: EdgeInsets.only(bottom: width*0.02),
                          decoration: BoxDecoration(
                              color: coupons[index]["color"],
                              borderRadius: BorderRadius.circular(width*0.02)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width:width*0.02),
                              Container(
                                height: width*0.2,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(image: AssetImage(coupons[index]["poster"]),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(width*0.03)
                                ),
                              ),
                              SizedBox(width:width*0.04),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(coupons[index]["text1"],
                                          style: coupons[index]["style1"]
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: width*0.02,),
                                  Text(coupons[index]["text2"],
                                      style: coupons[index]["style2"]
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              //margin: EdgeInsets.all(width*0.02),
            )
          ]
      ),
    );
  }
}
