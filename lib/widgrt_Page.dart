import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_app/color_page.dart';

import 'list_grid-task.dart';

var width;

class newFile extends StatefulWidget {
  const newFile({super.key});

  @override
  State<newFile> createState() => _newFileState();
}

class _newFileState extends State<newFile> {
  List images = [
    "images/car.jpeg",
    "images/BMW.jpg",
    "images/old car.webp",
  ];
  int selectIndex = 0;
  // bool gender=true;
  String gender = "m";
  bool tik = false;
  bool tik1 = false;
  bool select1 = true;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool tap = false;
  int count = 0;
  bool togle = true;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[400],
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => listGrid(),
              ));
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[400],
        child: ListView(
          children: [],
        ),
      ),
      appBar: AppBar(
        //toolbarHeight: width*0.3,
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.black),
                    Text("Profile"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.security,
                      color: Colors.black,
                    ),
                    Text("Security"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    Text("Info"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.black,
                    ),
                    Text("Help"),
                  ],
                )),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    Text("Settings"),
                  ],
                )),
              ];
            },
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: images.length,
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      selectIndex = index;
                      setState(() {});
                    },
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(
                      milliseconds: 50,
                    ),
                    viewportFraction: 1,
                  ),
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Container(
                        height: width * 0.5,
                        width: width * 1,
                        margin: EdgeInsets.only(right: width * 0.03),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.fill),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.15)),
                            ]));
                  },
                ),
                SizedBox(height: width * 0.03),
                AnimatedSmoothIndicator(
                  activeIndex: selectIndex,
                  count: images.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.indigo,
                    dotHeight: width * 0.03,
                    dotWidth: width * 0.03,
                  ),
                ),
                SizedBox(height: width * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RadioMenuButton(
                        value: "m",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                        child: Text("male")),
                    RadioMenuButton(
                      value: "f",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                      child: Text("female"),
                    ),
                    RadioMenuButton(
                        value: "0",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                        child: Text("others")),
                  ],
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CheckboxMenuButton(
                      value: tik,
                      onChanged: (value) {
                        setState(() {
                          tik = value!;
                        });
                      },
                      child: Text("A"),
                    ),
                    CheckboxMenuButton(
                      value: tik1,
                      onChanged: (value) {
                        setState(() {
                          tik1 = value!;
                        });
                      },
                      child: Text("B"),
                    )
                  ],
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                tap == true
                    ? SizedBox(
                        height: width * 0.08,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              select1 = true;
                              select2 = false;
                              select3 = false;
                              select4 = false;
                              setState(() {});
                            },
                            child: Container(
                              height: width * 0.08,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                color: select1 == true
                                    ? Colors.green
                                    : Colors.grey[400],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03),
                              ),
                              child: Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                    color: select1 == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              select1 = false;
                              select2 = true;
                              select3 = false;
                              select4 = false;
                              setState(() {});
                            },
                            child: Container(
                              height: width * 0.08,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                color: select2 == true
                                    ? Colors.green
                                    : Colors.grey[400],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03),
                              ),
                              child: Center(
                                child: Text(
                                  "B",
                                  style: TextStyle(
                                    color: select2 == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              select1 = false;
                              select2 = false;
                              select3 = true;
                              select4 = false;
                              setState(() {});
                            },
                            child: Container(
                              height: width * 0.08,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                color: select3 == true
                                    ? Colors.green
                                    : Colors.grey[400],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03),
                              ),
                              child: Center(
                                child: Text(
                                  "C",
                                  style: TextStyle(
                                    color: select3 == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              select1 = false;
                              select2 = false;
                              select3 = false;
                              select4 = true;
                              setState(() {});
                            },
                            child: Container(
                              height: width * 0.08,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                color: select4 == true
                                    ? Colors.green
                                    : Colors.grey[400],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03),
                              ),
                              child: Center(
                                child: Text(
                                  "D",
                                  style: TextStyle(
                                    color: select4 == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: width * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        tap = true;
                        setState(() {});
                      },
                      child: Container(
                        height: width * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(width * 0.03),
                        ),
                        child: Center(
                          child: Text(
                            "clear",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        tap = false;

                        setState(() {});
                      },
                      child: Container(
                        height: width * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(width * 0.03),
                        ),
                        child: Center(
                          child: Text(
                            "get",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: width * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        count++;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: width * 0.07,
                        backgroundColor: Colors.grey[400],
                        child: Icon(
                          Icons.add,
                          size: width * 0.08,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      "$count",
                      style: TextStyle(
                        fontSize: width * 0.07,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        count > 0 ? count-- : 0;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: width * 0.07,
                        backgroundColor: Colors.grey[400],
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: width * 0.08,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: width * 0.03),
                Divider(
                  color: Colors.black,
                  indent: width * 0.1,
                  endIndent: width * 0.1,
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "are you sure you want to exit",
                              ),
                              content: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: width * 0.08,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(
                                            width * 0.03)),
                                    child: Center(
                                      child: Text(
                                        "Yes",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: width * 0.08,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.circular(
                                              width * 0.03)),
                                      child: Center(
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: width * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(width * 0.03)),
                        child: Center(
                          child: Text(
                            "AltBox",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(width * 0.08),
                                topRight: Radius.circular(width * 0.08)),
                          ),
                          context: context,
                          builder: (context) {
                            return Container();
                          },
                        );
                      },
                      child: Container(
                        height: width * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(width * 0.03)),
                        child: Center(
                          child: Text(
                            "btmsheet",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    CircularProgressIndicator(
                      color: Colors.grey[800],
                      // backgroundColor: Colors.red,
                      //   strokeWidth: 5,
                    ),
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("I am Ashik")));
                      },
                      child: Container(
                        height: width * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(width * 0.03)),
                        child: Center(
                          child: Text(
                            "snackBar",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: width * 0.05,
                ),
                Row(
                  children: [
                    Stack(children: [
                      InkWell(
                        onTap: () {
                          togle = !togle;
                          setState(() {});
                        },
                        child: Container(
                          height: width * 0.082,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              color: togle ? Colors.green : Colors.grey[400],
                              borderRadius:
                                  BorderRadius.circular(width * 0.05)),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 200),
                        left: togle ? width * 0.12 : 0,
                        right: togle ? 0 : width * 0.12,
                        curve: Curves.easeIn,
                        child: InkWell(
                          onTap: () {
                            togle = !togle;
                            setState(() {});
                          },
                          child: AnimatedContainer(
                            duration: Duration(
                              milliseconds: 200,
                            ),
                            height: width * 0.08,
                            width: width * 0.08,
                            curve: Curves.easeIn,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        right: togle ? width * 0.12 : width * 0.01,
                        left: togle ? width * 0.01 : width * 0.12,
                        top: width * 0.02,
                        child: Text(
                          togle ? "ON" : "OFF",
                          style: TextStyle(
                            color: togle ? Colors.white : Colors.black,
                          ),
                        ),
                      )
                    ]),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
