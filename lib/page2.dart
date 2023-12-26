import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("page2"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page3(),));
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
