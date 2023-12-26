import 'package:flutter/material.dart';

class colorPage extends StatefulWidget {
  const colorPage({super.key});

  @override
  State<colorPage> createState() => _colorPageState();
}

class _colorPageState extends State<colorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Center(
          child: Text("COLOR BOX",
          style: TextStyle(
            fontSize: 30,
          ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 198.7,
                width: 126.5,
                color: Colors.blue,
              ),
              Container(
                height: 198.8,
                width: 255,
                color: Colors.purple,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 198.8,
                width: 126.5,
                color: Colors.red,
              ),
              Container(
                height: 198.8,
                width: 126.5,
                color: Colors.green,
              ),
              Container(
                height: 198.8,
                width: 126.5,
                color: Colors.purple,
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 198.8,
                width: 255,
                color: Colors.red,
              ),
              Container(
                height: 198.8,
                width: 126.5,
                color: Colors.brown,
              )
            ],
          )


     ],
      ),
    );
  }
}
