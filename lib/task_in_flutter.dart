
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'main.dart';

class ui_task extends StatefulWidget {
  const ui_task({super.key});

  @override
  State<ui_task> createState() => _ui_taskState();
}

class _ui_taskState extends State<ui_task> {
  TextEditingController name_controller = TextEditingController();

  List all = [
    {
      "images": "images/img/toppng.com-nike-zoom-winflo-3-831561-001-mens-running-shoes-601x269.png",
      // "images": "images/img/Nike-Shoes-Air-Max-PNG-Images.png",
      "text": "Nike Air Max 2090",
      "text1": "7 Colors",
      "rate": "\$150",
    },
    {
      "images": "images/img/Nike-Shoes-Transparent.png",
      "text": "Nike React Vision",
      "text1": "4 Colors",
      "rate": "\$140",
    },
    {
      "images": "images/img/Nike-Shoes-Air-Max-PNG-Pic.png",
      "text": "Nike Air Star",
      "text1": "8 Colors",
      "rate": "\$160",
    },
  ];
  int selectIndex = 0;
  List tap=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: width*0.2,
        color: Colors.grey.shade200,
        child: BottomBarFloating(
          
            backgroundColor: Colors.white,
            color: Colors.grey,
            colorSelected: colorPage.primaryColor,
            indexSelected: selectIndex,
            onTap: (value) {
              selectIndex = value!;
              setState(() {});
            },
          borderRadius: BorderRadius.only(topRight: Radius.circular(width*0.05),topLeft:Radius.circular(width*0.05)),
            items: [
              TabItem(
                  icon:   Icons.home_outlined,
                  title: "Home",
                  // activeIcon:  color: Colors.indigoAccent,,
                ),
                TabItem(
                  icon: Icons.rss_feed,
                  title: "Feed",
                ),
                TabItem(
                    icon:  CupertinoIcons.cart,
                    title: "Cart"),
                TabItem(
                    icon:   Icons.message_outlined,
                    title: "Message"),
                TabItem(
                    icon: Icons.perm_identity,
                    title: "User"),
            ]
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
                width: width * 1,
                height: width * 0.73,
                child: Column(
                  children: [
                    Container(
                      height: width * 0.6,
                      width: width * 1,
                      child: Padding(
                        padding: EdgeInsets.only(top: width * 0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                    name_controller.text!=''?Container():Text(
                              "SHOPIN",
                              style: GoogleFonts.muktaVaani(
                                  fontSize: width * 0.08,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            // Container(
                            //   height: width*0.13,
                            //     width: width*0.35,
                            //   decoration: BoxDecoration(
                            //       color: Colors.white,
                            //     borderRadius: BorderRadius.circular(width*0.02)
                            //   ),
                            //   child: Row(
                            //     children: [
                            //       SizedBox(width: width*0.02,),
                            //       Icon(Icons.search,color: Colors.black,size: width*0.08,),
                            //       Text("Search",style: TextStyle(
                            //           fontSize: width*0.04,
                            //           fontWeight: FontWeight.w500,
                            //           color: Colors.black
                            //       ),),
                            //     ],
                            //   ),
                            //
                            // ),
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              height: width * 0.13,
                              width:name_controller.text==''? width * 0.35:width * 0.7,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(width * 0.02),
                              ),
                              child: TextFormField(
                                onChanged: (value) {
                                  setState(() {

                                  });
                                },
                                controller: name_controller,
                                textCapitalization: TextCapitalization.words,
                                keyboardType: TextInputType.multiline,
                                textInputAction: TextInputAction.done,
                                style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w600,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: width*0.02),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                    size: width * 0.08,
                                  ),
                                  //   prefixStyle: TextStyle(
                                  //       fontSize: width*0.05,
                                  //       fontWeight: FontWeight.w700
                                  //   ),
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                      fontSize: width * 0.04,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  // border: OutlineInputBorder(
                                  //     borderRadius:
                                  //         BorderRadius.circular(width * 0.02),
                                  //     borderSide: BorderSide(
                                  //       color: Colors.white,
                                  //     )),
                                  // focusedBorder: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(width*0.1),
                                  //     borderSide: BorderSide(
                                  //       color: Colors.green,
                                  //     )
                                  // )
                                ),
                              ),
                            ),
                            Container(
                              height: width * 0.13,
                              width: width * 0.13,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                                size: width * 0.07,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.02)),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          // color: Colors.indigoAccent,
                        color: colorPage.primaryColor,
                          borderRadius: BorderRadius.circular(width * 0.07)),
                    ),
                  ],
                )),
            Positioned(
              bottom: 0,
              top: width * 0.29,
              left: width * 0.077,
              child: Container(
                height: width * 0.38,
                width: width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(width * 0.05),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          spreadRadius: 6,
                          blurRadius: 8,
                          offset: Offset(0, 1))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width * 0.4,
                          height: width * 0.25,
                          child: Padding(
                            padding:  EdgeInsets.all(width*0.04),
                            child: Image.asset( "images/img/Nike_Air_Max_2090_Sneaker__Women__Nordstrom-removebg-preview.png",
                            fit: BoxFit.cover),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                              // image: DecorationImage(
                              //     image: AssetImage(
                              //
                              //     ),
                              //   fit:BoxFit.cover
                              //     ),
                              // color: Colors.yellow,
                              borderRadius:
                                  BorderRadius.circular(width * 0.045)),
                        ),
                        Container(
                          height: width * 0.28,
                          width: width * 0.31,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "lntroducing",
                                style: TextStyle(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                "Air Max 2090",
                                style: GoogleFonts.roboto(
                                    fontSize: width * 0.05,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: width * 0.01,
                              ),
                              Container(
                                width: width * 0.22,
                                height: width * 0.1,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.03),
                                ),
                                child: Center(
                                  child: Text("Buy Now",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: width * 0.035,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 4,
                      effect: WormEffect(
                        activeDotColor: Colors.grey,
                        dotColor: Colors.grey.shade400,
                        dotHeight: width * 0.025,
                        dotWidth: width * 0.025,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
          SizedBox(
            height: width * 0.07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: width * 0.17,
                    width: width * 0.17,
                    child:Padding(
                      padding: EdgeInsets.all(width*0.042),
                      child: SvgPicture.asset("images/category-2-svgrepo-com (2).svg"),
                    ),
                    decoration: BoxDecoration(
                        color: colorPage.c1.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(width * 0.04)),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text("Category",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: width * 0.17,
                    width: width * 0.17,
                    child: Icon(Icons.compare,size: width*0.08,color: colorPage.primaryColor.withOpacity(0.8)),
                    decoration: BoxDecoration(
                        color: colorPage.primaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(width * 0.04)),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text("Compare",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: width * 0.17,
                    width: width * 0.17,
                    child: Padding(
                      padding:  EdgeInsets.all(width*0.04),
                      child: Container(child: SvgPicture.asset("images/sale-tag-for-online-shops-svgrepo-com.svg")),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(width * 0.04)),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text("Sales event",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: width * 0.17,
                    width: width * 0.17,
                   child: Padding(
                     padding: EdgeInsets.all(width*0.04),
                     child: Container(
                         height: width*0.03,
                         width: width*0.03,
                         child: SvgPicture.asset("images/offer-svgrepo-com (2).svg")),
                   ),
                    decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(width * 0.04)),
                  ),
                  SizedBox(
                    height: width * 0.01,
                  ),
                  Text("Offers",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: width * 0.08,
          ),
          Expanded(
            child: Container(
              // width: width*1,
              // height: width*1.1,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(width * 0.06),
                      topLeft: Radius.circular(width * 0.06))),
              child: Padding(
                padding: EdgeInsets.all(width * 0.06),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Arrivals",
                            style: GoogleFonts.roboto(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Container(
                            width: width * 0.22,
                            height: width * 0.1,
                            decoration: BoxDecoration(
                              color: colorPage.primaryColor,
                              borderRadius: BorderRadius.circular(width * 0.03),
                            ),
                            child: Center(
                              child: Text("View All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.033,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: width * 0.04,
                      ),
                      Container(
                        height: width * 0.63,
                        width: width * 1,
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: width * 0.6,
                              width: width * 0.36,
                              margin: EdgeInsets.only(right: width * 0.035),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04)),
                              child: Padding(
                                padding: EdgeInsets.all(width * 0.012),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: width * 0.37,
                                      width: width * 0.4,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  all[index]["images"])),
                                          borderRadius: BorderRadius.circular(
                                              width * 0.04)),
                                      child: Padding(
                                        padding: EdgeInsets.all(width * 0.025),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                if(tap.contains(index)){
                                                  tap.remove(index);
                                                }else{
                                                tap.add(index);
                                                }
                                                setState(() {

                                                });
                                              },
                                              child:tap.contains(index)? Icon(Icons.favorite,
                                                  size: width * 0.07,
                                                  color: colorPage.primaryColor):Icon(Icons.favorite_border,
                                                  size: width * 0.07,
                                                  color: Colors.grey.shade600)
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: width * 0.013,
                                          right: width * 0.015),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            all[index]["text"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: width * 0.032),
                                          ),
                                          Container(
                                            width: width * 0.17,
                                            height: width * 0.07,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.circular(
                                                  width * 0.015),
                                            ),
                                            child: Center(
                                              child: Text(all[index]["text1"],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: width * 0.027,
                                                    color: Colors.black54,
                                                  )),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                all[index]["rate"],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: width * 0.04),
                                              ),
                                              Container(
                                                height: width * 0.08,
                                                width: width * 0.08,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color:
                                                            Colors.grey.shade300),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            width * 0.02)),
                                                child: Icon(Icons.add),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
