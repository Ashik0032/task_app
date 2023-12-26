import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class first_Page extends StatefulWidget {
  const first_Page({super.key});

  @override
  State<first_Page> createState() => _first_PageState();
}

class _first_PageState extends State<first_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.blue,
        body: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,


            ),
            Text("Ashik",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "DancingScript"

            ),)
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
