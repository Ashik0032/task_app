import 'package:flutter/material.dart';

import 'BottomNavigationBar.dart';
import 'main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottomNavigationBar(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: width*2,
        width:width*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("WELCOME",
            style: TextStyle(
              fontSize: width*0.08,
              fontWeight: FontWeight.w700
            )),
            SizedBox(height: width*0.03,),
        CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
