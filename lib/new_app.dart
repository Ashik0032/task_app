import 'package:flutter/material.dart';
var width;
// var height;

class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
     // height=MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: width*0.3,
            width: width*1,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(width*0.03),
             boxShadow: [
               BoxShadow(
                 color: Colors.black.withOpacity(0.15),
                 blurRadius: 4,
                 spreadRadius: 2,
                 offset: Offset(0, 4)
               )
             ]
           ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              CircleAvatar(
                radius: width*0.1,
                backgroundColor:Colors.blue ,
                backgroundImage: AssetImage("images/orsrc30512.jpg")),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("0NE",
                    style: TextStyle(
                      fontSize: width*0.06,
                    ),
                    ),
                    Text("TWO",
                      style: TextStyle(
                        fontSize: width*0.06,
                      ),
                        ),
                    Text("THREE",
                    style: TextStyle(
                      fontSize: width*0.06,
                    ),),
                  ],
                ),
                Container(
                  height: width*0.2,
                  width: width*0.2,
                 color: Colors.blue,
                 child: Image.network("https://i.pinimg.com/236x/75/bc/70/75bc701979f11bc73ef925fb2f909016.jpg",fit: BoxFit.cover,),),
              ],
            ),

            ),
          Text("NUMBER",
          style: TextStyle(
            fontSize: width*0.08,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.account_box_rounded),
                  SizedBox(width: width*0.03,),
                  Text("Contacts",
                  style: TextStyle(
                    fontSize: width*0.06,
                  ),),
                ],
              ),
              Icon(Icons.account_circle_outlined),
            ],
          ),
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.add_a_photo),
            SizedBox(width: width*0.03,),
            Text("Camera",
              style: TextStyle(
                fontSize: width*0.06,
              ),),
           // SizedBox(height: width*0.05,),
          ],
        ),
        Icon(Icons.add_a_photo_outlined),
      ],
      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.access_time_filled),
                  SizedBox(width: width*0.03,),
                  Text("Clock",
                    style: TextStyle(
                      fontSize: width*0.06,
                    ),),
                ],
              ),
              Icon(Icons.access_time ),
            ],
          ),
          Container(
            height: width*0.5,
            width: width*1,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: Offset(0,4),
                )
              ],
              borderRadius: BorderRadius.circular(width*0.03),
            ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: width*0.1,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage("images/orsrc68016.jpg"),),
                    Row(
                      children: [
                        Icon(Icons.add_alarm),
                        SizedBox(width: width*0.04,),
                        Text("hello",
                        style: TextStyle(
                          fontSize: width*0.06,
                        ),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.accessibility_new_rounded),
                        SizedBox(width: width*0.04,),
                        Text("boys",
                          style: TextStyle(
                            fontSize: width*0.06,
                          ),),
                      ],
                    ),

                  ],
                ),
                Container(
                  height: width*0.35,
                  width: width*0.4,
                 decoration: BoxDecoration(
                   color: Colors.cyanAccent.withOpacity(0.4),
                   border: Border.all(
                     color: Colors.red,
                     width: width*0.01
                   )
                 ),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("A",
                            style: TextStyle(
                              fontSize: width*0.06,
                              fontWeight: FontWeight.w600
                            ),),
                          Text("TEXT",
                            style: TextStyle(
                              fontSize: width*0.05,
                            ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("B",
                            style: TextStyle(
                              fontSize: width*0.06,
                                fontWeight: FontWeight.w600
                            ),),
                          Text("TEXT",
                            style: TextStyle(
                              fontSize: width*0.05,
                            ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("C",
                            style: TextStyle(
                              fontSize: width*0.06,
                                fontWeight: FontWeight.w600
                            ),),
                          Text("TEXT",
                            style: TextStyle(
                              fontSize: width*0.05,
                            ),),
                        ],
                      ),


                    ],
                  ),
                ),
              ],
            ),


          ),
        ],
      ),

    );
  }
}
