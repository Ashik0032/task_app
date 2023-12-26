import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/page4.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("page3"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => page4(),),
              ModalRoute.withName("/"));
            },
            child: Icon(Icons.add,
            ),
          ),
          SizedBox(width:6),
        ],
      ),
    );
  }
}
