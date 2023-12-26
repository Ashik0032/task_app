import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coupons.dart';
import 'main.dart';
class flipkart extends StatefulWidget {
  const flipkart({super.key});

  @override
  State<flipkart> createState() => _flipkartState();
}

class _flipkartState extends State<flipkart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: width*0.2,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Hey! Ashik",
                      style: TextStyle(
                  fontSize: width*0.047,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
              ),
                  ),
              SizedBox(height: width*0.03,),
              Row(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: width*0.04,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(width: width*0.005,),
                  Container(
                    height: width*0.03,
                    width: width*0.03,
                    child: Image(image: AssetImage("images/plus_logo.png"),
                    ),
                  ),
                  SizedBox(width: width*0.005,),
                  Text("Plus",
                    style: TextStyle(
                      color: Colors.blue[900],
                        fontSize: width*0.04,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  size: width*0.03,)

                ],
              ),


              // Row(
              //   children: [
              //     Container(
              //       height: width*0.03,
              //       width: width*0.03,
              //       color: Colors.blue,
              //     )
              //   ],
              // )
              //
              // RichText(
              //   text: TextSpan(
              //     text: 'Hello ',
              //     children: [
              //       TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
              //       TextSpan(text: ' world!'),
              //       TextSpan()
              //     ],
              //   ),
              // )

            ],
          ),
          actions: [
            Row(
              children: [
                Container(
                  height: width*0.065,
                  width: width*0.11,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(width*0.05),
                  ),
                  child:
                  Row(
                    children: [
                      SizedBox(width: width*0.013,),
                      CircleAvatar(
                        radius: width*0.02,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("images/super-coin-logo-.png"),
                        // child: Image(image: AssetImage("images/12c1epjt.png"),width: width*0.1),
                      ),
                      SizedBox(width:width*0.011),
                      Text("8",
                          style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width*0.043,
                        color: Colors.black
                      )),
                      // SizedBox(height: width*0.013,),
                    ],
                  ),
                ),
                SizedBox(
                width: width*0.05,
                )
              ],
            )
          ],
        ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Container(
                  height: width*0.35,
                  width: width*1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 1,
                        spreadRadius: 0,
                       offset: Offset(1, 1)
                      )
                    ]
                    // border: Border(
                    //   bottom: BorderSide(
                    //     width: width*0.004,
                    //     color: Colors.black12
                    //   )
                    // ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: width*0.11,
                            width: width*0.44,
                            decoration: BoxDecoration(
                                color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius: BorderRadius.circular(
                                  width*0.015,

                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width:width*0.035),
                                Icon(
                                  CupertinoIcons.cube_box,
                                  size: width*0.06,
                                  color: Colors.blue[800],
                                ),
                                SizedBox(width:width*0.02),
                                Text("Orders",
                                style: TextStyle(
                                  fontSize: width*0.042,
                                  fontWeight: FontWeight.w500,
                                )),
                              ],
                            ),

                          ),
                          Container(
                            height: width*0.11,
                            width: width*0.44,
                            decoration: BoxDecoration(
                                color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius: BorderRadius.circular(
                                width*0.015
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width:width*0.035),
                                Icon(
                                  Icons.favorite_border,
                                  size: width*0.06,
                                  color: Colors.blue[800],
                                ),
                                 SizedBox(width:width*0.02),
                                Text("Wishlist",
                                    style: TextStyle(
                                        fontSize: width*0.042,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => coupons(),));
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: width*0.11,
                                  width: width*0.44,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        width*0.015
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width:width*0.035),
                                      Icon(
                                        CupertinoIcons.gift,
                                        size: width*0.06,
                                        color: Colors.blue[800],
                                      ),
                                       SizedBox(width:width*0.02),
                                      Text("Coupons",
                                          style: TextStyle(
                                              fontSize: width*0.042,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: width*0.11,
                            width: width*0.44,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius: BorderRadius.circular(
                                  width*0.015
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width:width*0.035),
                                Icon(
                                  Icons.headset_mic_outlined,
                                  size: width*0.06,
                                  color: Colors.blue[800],
                                ),
                                 SizedBox(width:width*0.02),
                                Text("Help Center",
                                    style: TextStyle(
                                        fontSize: width*0.042,
                                      fontWeight: FontWeight.w500
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            SizedBox(height:width*0.025),
            Container(
              height: width*0.17,
              width: width*1,

              decoration: BoxDecoration(
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 1,
                      spreadRadius: 0,
                      offset: Offset(1, 0)
                  ),
                ]
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: width*0.15,
                    width:width*0.14,
                      // color: Colors.brown,
                    child: Image.network(
                      "http://download.seaicons.com/icons/custom-icon-design/pretty-office-12/512/mail-message-send-icon.png",fit: BoxFit.contain,),
                  ),
                  // SizedBox(width: width*0.03,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Add/Verify your Email",
                          style: TextStyle(
                            fontSize: width*0.041,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(width:width*0.01),
                          CircleAvatar(
                            radius: width*0.009,
                            backgroundColor: Colors.red[800],

                          )
                        ],
                      ),
                      SizedBox(height: width*0.015,),
                      Text("Get latest updates of your orders"),
                    ],
                  ),
                  Container(
                    height: width*0.085,
                    width: width*0.19,
                    decoration: BoxDecoration(
                        color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(width*0.01)
                    ),
                    child: Center(
                        child: Text("Update",
                        style: TextStyle(
                          fontSize: width*0.041,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),)),
                  ),
                ],
              ),
            ),
            SizedBox(height:width*0.025),
            Container(
              height: width*0.28,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 1,
                      spreadRadius: 0,
                      offset: Offset(1, 0)
                  ),
                ]
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: width*0.03,),
                        Row(
                          children: [
                            SizedBox(width: width*0.04,),
                            Text("Credit Options",
                            style: TextStyle(
                              fontSize: width*0.047,
                              fontWeight: FontWeight.w600
                            )
                            ),
                          ],
                        ),
                        SizedBox(height: width*0.04,),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.calendar_month,
                            color: Colors.blue[900],
                            size: width*0.065),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Flipkart Pay Later",
                                  style: TextStyle(
                                      fontSize: width*0.042,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                SizedBox(height: width*0.02,),
                                Text("Get ~10,000* worth Times Prime benefits",
                                style: TextStyle(
                                  color: Colors.grey[600]
                                )),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                              color: Colors.grey[800],
                              size: width*0.03,),
                          ],
                        ),
                      ],
                ),
            ),
            SizedBox(height:width*0.025),
            Container(
              height: width*0.75,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 1,
                      spreadRadius: 0,
                      offset: Offset(1, 0)
                  ),
                ]
              ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: width*0.04,),
                        Row(
                          children: [
                            SizedBox(width: width*0.04,),
                            Text("Account Settings",
                            style: TextStyle(
                              fontSize: width*0.047,
                              fontWeight: FontWeight.w600
                            )
                            ),
                          ],
                        ),
                     SizedBox(height: width*0.01,),
                    // Row(
                    //   children: [
                    //     SizedBox(width: width*0.03,),
                    //     Icon(Icons.star_border,
                    //     size: width*0.08,)
                    //   ],
                    // )
                    Padding(
                      padding: EdgeInsets.all(width*0.03),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.add_box_outlined,
                                    color: Colors.blue[800],
                                    size: width*0.06,),
                                  SizedBox(width: width*0.05,),
                                  Text("Flipkart Plus",
                                    style: TextStyle(
                                      fontSize: width*0.042,
                                    ),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey[800],
                                  size: width*0.03),
                            ],
                          ),
                           SizedBox(height: width*0.04,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person_outline,
                                    color: Colors.blue[800],
                                    size: width*0.065,),
                                  SizedBox(width: width*0.05,),
                                  Text("Edit Profile",
                                    style: TextStyle(
                                      fontSize: width*0.042,
                                    ),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey[800],
                                  size: width*0.03),
                            ],
                          ),
                           SizedBox(height: width*0.04,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.account_balance_wallet_outlined,
                                    color: Colors.blue[800],
                                    size: width*0.065,),
                                  SizedBox(width: width*0.05,),
                                  Text("Saved Cards & Wallet",
                                    style: TextStyle(
                                      fontSize: width*0.042,
                                    ),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey[800],
                                  size: width*0.03),
                            ],
                          ),
                           SizedBox(height: width*0.03,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.place_outlined,
                                    color: Colors.blue[800],
                                    size: width*0.065,),
                                  SizedBox(width: width*0.05,),
                                  Text("Saved Addresses",
                                    style: TextStyle(
                                      fontSize: width*0.042,
                                    ),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey[800],
                                  size: width*0.03),
                            ],
                          ),
                           SizedBox(height: width*0.03,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.language_outlined,
                                    color: Colors.blue[800],
                                    size: width*0.065,),
                                  SizedBox(width: width*0.05,),
                                  Text("Select Language",
                                    style: TextStyle(
                                      fontSize: width*0.042,
                                    ),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey[800],
                                  size: width*0.03),
                            ],
                          ),
                           SizedBox(height: width*0.03,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.notifications_none_outlined,
                                    color: Colors.blue[800],
                                    size: width*0.065,),
                                  SizedBox(width: width*0.05,),
                                  Text("Notification Settings",
                                    style: TextStyle(
                                      fontSize: width*0.042,
                                    ),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey[800],
                                  size: width*0.03),
                            ],
                          ),
                        ],
                      ),
                    ),
                      ],
                ),
            ),
            SizedBox(height:width*0.025),
            Container(
              height: width*0.35,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 1,
                        spreadRadius: 0,
                        offset: Offset(1, 0)
                    ),
                  ]
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: width*0.04,),
                  Row(
                    children: [
                      SizedBox(width: width*0.04,),
                      Text("My Activity",
                          style: TextStyle(
                              fontSize: width*0.047,
                              fontWeight: FontWeight.w600
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: width*0.01,),
                  Padding(
                    padding: EdgeInsets.all(width*0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.rate_review_outlined,
                                  color: Colors.blue[800],
                                  size: width*0.065,),
                                SizedBox(width: width*0.05,),
                                Text("Reviews",
                                  style: TextStyle(
                                    fontSize: width*0.042,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey[800],
                                size: width*0.03),
                          ],
                        ),
                        SizedBox(height: width*0.04,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.question_answer_outlined,
                                  color: Colors.blue[800],
                                  size: width*0.065,),
                                SizedBox(width: width*0.05,),
                                Text("Questions & Answers",
                                  style: TextStyle(
                                    fontSize: width*0.042,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey[800],
                                size: width*0.03),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:width*0.025),
            Container(
              height: width*0.35,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 1,
                        spreadRadius: 0,
                        offset: Offset(1, 0)
                    ),
                  ]
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: width*0.04,),
                  Row(
                    children: [
                      SizedBox(width: width*0.04,),
                      Text("Earn With Flipkart",
                          style: TextStyle(
                              fontSize: width*0.047,
                              fontWeight: FontWeight.w600
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: width*0.01,),
                  Padding(
                    padding: EdgeInsets.all(width*0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border,
                                  color: Colors.blue[800],
                                  size: width*0.065,),
                                SizedBox(width: width*0.05,),
                                Text("Flipkart Creator Studio",
                                  style: TextStyle(
                                    fontSize: width*0.042,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey[800],
                                size: width*0.03),
                          ],
                        ),
                        SizedBox(height: width*0.04,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.shopping_bag_outlined,
                                  color: Colors.blue[800],
                                  size: width*0.065,),
                                SizedBox(width: width*0.05,),
                                Text("Sell On Flipkart",
                                  style: TextStyle(
                                    fontSize: width*0.042,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey[800],
                                size: width*0.03),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:width*0.025),
            Container(
              height: width*0.35,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 1,
                        spreadRadius: 0,
                        offset: Offset(1, 0)
                    ),
                  ]
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: width*0.04,),
                  Row(
                    children: [
                      SizedBox(width: width*0.04,),
                      Text("Feedback & Information",
                          style: TextStyle(
                              fontSize: width*0.047,
                              fontWeight: FontWeight.w600
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: width*0.01,),
                  Padding(
                    padding: EdgeInsets.all(width*0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.sticky_note_2_outlined,
                                  color: Colors.blue[800],
                                  size: width*0.065,),
                                SizedBox(width: width*0.05,),
                                Text("Terms, Policies and Licenses",
                                  style: TextStyle(
                                    fontSize: width*0.042,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey[800],
                                size: width*0.03),
                          ],
                        ),
                        SizedBox(height: width*0.04,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.info_outline,
                                  color: Colors.blue[800],
                                  size: width*0.065,),
                                SizedBox(width: width*0.05,),
                                Text("Browse FAQs",
                                  style: TextStyle(
                                    fontSize: width*0.042,
                                  ),),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey[800],
                                size: width*0.03),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:width*0.07),
            Center(
              child: Container(
                height: width*0.1,
                width: width*0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.circular(
                    width*0.015,

                  ),
                ),
                child: Center(
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: width*0.045,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: width*0.06,)
          ],
        ),
      ),
      );

  }
}
