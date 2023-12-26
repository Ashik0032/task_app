import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class demoorders extends StatefulWidget {
  const demoorders({super.key});

  @override
  State<demoorders> createState() => _demoordersState();
}
class _demoordersState extends State<demoorders> {
  List product=[
    {
      "images": "https://th.bing.com/th/id/OIP.SZeNox1ofAtKfVoXu9vbEAAAAA?pid=ImgDet&rs=1",
      "text1": "Delivered on mar 02, 2021",
      "text2": "NIKE Premium Sport Shoes ...",
    },
    {
      "images": "https://www.mytrendyphone.eu/images/Baseus-Glitter-Series-iPhone-13-Pro-Case-Blue-6932172601379-31082021-01-p.webp",
      "text1": "Delivered on Jun 07, 2022",
      "text2": "Baseus Glitter iPhone 13 Pro...",
    },
    {
      "images": "https://www.boat-lifestyle.com/cdn/shop/products/R2424PPBlack_1_2000x.png?v=1673000942",
      "text1": "Refund completed",
      "text2": "BOAT Rockerz 660 Wired Head ...",
    },
    {
      "images": "https://api.ecom.longines.com/media/catalog/product/w/a/watch-collection-hydroconquest-l3-780-4-96-6-1683699569.png",
      "text1": "Cancelled on Sep 20",
      "text2": "Longines HydroConquest Watch",
    },
    {
      "images": "https://fabrilife.com/products/61c4131d641fe-square.jpg?v=20",
      "text1": "Delivered on Oct 07, 2022",
      "text2": "Mens Urban Premium T-shirt ...",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: width*0.17,
        title: Text("My Orders",
          style: TextStyle(
            color: Colors.black,
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
                    color: Colors.black,
                    size: width*0.065),
                SizedBox(width: width*0.05,),
                Icon(Icons.shopping_cart,
                    color: Colors.black,
                    size: width*0.065),
              ],
            ),
          ),
        ],
        elevation: 2,
      ),
      body: Column(
        children: [
          Container(
            height: width*0.15,
            width: width*1,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 1,
                      spreadRadius: 0,
                      offset: Offset(1, 0)
                  ),
                ]
            ),
            child: Padding(
              padding: EdgeInsets.all(width*0.025),
              child: Row(
                children: [
                  Container(
                    height: width*0.1,
                    width: width*0.65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(
                        width*0.013,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width:width*0.035),
                        Icon(
                          CupertinoIcons.search,
                          size: width*0.06,
                          color: Colors.grey[500],
                        ),
                        SizedBox(width:width*0.02),
                        Text("Search Your order here",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: width*0.043,
                              // fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),

                  ),
                  SizedBox(width:width*0.06),
                  Row(
                    children: [
                      Icon(Icons.filter_list_sharp,
                      size: width*0.06),
                      SizedBox(width: width*0.02,),
                      Text("Filters",
                      style: TextStyle(
                        fontSize: width*0.042
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height:width*0.006),
          Container(
            height: width*1.406,
            width: width*1,
              color: Colors.white,
            child: Column(
              children: [
                SizedBox(height:width*0.005),
                Container(
                  height: width*1.4,
                  width: width*1,
                   color: Colors.grey[400],
                  child: ListView.builder(
                    itemCount:product.length,
                    // physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: width*0.28,
                        width: width*0.97,
                        margin: EdgeInsets.only(bottom: width*0.0008),
                          color: Colors.white,
                            // color: coupons[index]["color"],
                        child: Padding(
                          padding: EdgeInsets.all(width*0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // SizedBox(width:width*0.02),
                              Container(
                                height: width*0.2,
                                width: width*0.2,
                                    color: Colors.white,
                                    child: Image(image: NetworkImage(
                                      product[index]["images"]
                                    ),
                                  fit: BoxFit.cover, ),
                                    // image: DecorationImage(image: AssetImage(coupons[index]["poster"]),fit: BoxFit.cover),
                              ),
                              SizedBox(width:width*0.045),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(product[index]["text1"],
                                    style: TextStyle(
                                      color: Colors.black,
                                    fontSize: width*0.041
                                  ),
                                  ),
                                  SizedBox(height:width*0.02),
                                  Text(product[index]["text2"],
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                        fontSize: width*0.041
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: width*0.05,),
                              Icon(Icons.arrow_forward_ios,
                                color: Colors.grey[800],
                              size: width*0.03,)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: width*0.14,
            width: width*1,
            decoration: BoxDecoration(
                color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1,
                  spreadRadius: 0,
                  offset: Offset(0, 2)
                )
              ]
            ),
            child: Center(
              child: Text("No more orders",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: width*0.042
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
