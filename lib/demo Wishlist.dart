import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class demoWishlist extends StatefulWidget {
  const demoWishlist({super.key});

  @override
  State<demoWishlist> createState() => _demoWishlistState();
}

class _demoWishlistState extends State<demoWishlist> {
  List like=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkXKbZ3cbadZmdSZPXJ2utoZfn0ha5hwAYpg&usqp=CAU",
    "https://timeandtidewatches.com/wp-content/uploads/2020/12/Victorinox-Inox.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn3Cy2fJvjot_1qZBJ15JnK1mUL6YDkzfYKg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY6mNxVI0zhwHtZcYeleRV0W6nYDr5AnltAA&usqp=CAU"
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        toolbarHeight: width*0.17,
        title: Text("Wishlist & Collections",
          style: TextStyle(
              fontSize: width*0.047,
              fontWeight: FontWeight.w400
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width*0.055),
            child: Row(
              children: [
                Icon(Icons.shopping_cart,
                size: width*0.06),
              ],
            ),
          )
        ],
        elevation: 0,
      ),
       backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            height: width*0.15,
            width: width*1,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My Collections",
                    style: TextStyle(
                      fontSize: width*0.04,
                    ),
                  ),
                  Text("Collections I follow",
                    style: TextStyle(
                      fontSize: width*0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:width*0.006),
          Container(
            height: width*1.67,
            width: width*1,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(width*0.033),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: width*0.41,
                        width: width*0.93,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(width*0.01)
                        ),
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                left: width*0.015,
                                bottom: width*0.01,
                              top: width*0.014,
                               // right: width*0.002
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height:width*0.213,
                                    width: width*0.213,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                        BoxShadow(
                                          blurRadius: 1,
                                          spreadRadius: 0,
                                          color: Colors.grey.shade600,
                                          offset: Offset(0, 0)

                                        )
                                      ]
                                    ),
                                    child: Image(image: NetworkImage(like[index]),fit: BoxFit.cover),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
         SizedBox(height:width*0.006),
         Row(
           children: [
             Container(
               height: width*0.134,
               width: width*1,
               color: Colors.white,
               child: Padding(
                 padding:  EdgeInsets.all(width*0.02),
                 child: Container(
                   height: width*0.1,
                   width: width*1,
                   decoration: BoxDecoration(
                       color: Colors.white,
                     border: Border.all(
                       color: Colors.blue.shade700,
                     ),
                     borderRadius: BorderRadius.circular(width*0.01)
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.add,
                       size: width*0.05,
                       color: Colors.blue[800]),
                       SizedBox(width: width*0.02,),
                       Text("Create a new collection",
                       style: TextStyle(
                         fontSize: width*0.04,
                         color: Colors.blue[800],
                       ),
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),

        ],
      ),
    );
  }
}
