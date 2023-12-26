import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("page4"),
        centerTitle: true,
        actions: [
          Icon(Icons.add,

          )
        ],
      ),
    );
  }
}
