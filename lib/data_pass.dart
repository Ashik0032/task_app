import 'package:flutter/material.dart';

import 'main.dart';

class dataPass extends StatefulWidget {
  final String name;
  final String number;
  final String email;
  final String password;
  final String address;
  const dataPass({super.key, required this.name, required this.number, required this.email, required this.password, required this.address});

  @override
  State<dataPass> createState() => _dataPassState();
}

class _dataPassState extends State<dataPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Data Pass"),
        centerTitle: true,
      ),
      body: Container(
        height: width*2,
        width: width*1,
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name:${widget.name}",
            style: TextStyle(
              fontSize: width*0.05
            )),
            Text("Number:${widget.number}",
                style: TextStyle(
                    fontSize: width*0.05
                )),
            Text("Email:${widget.email}",
                style: TextStyle(
                    fontSize: width*0.05
                )),
            Text("Password:${widget.password}",
                style: TextStyle(
                    fontSize: width*0.05
                )),
            Text("Address:${widget.address}",
                style: TextStyle(
                    fontSize: width*0.05
                )),
          ],
        ),
      ),
    );
  }
}
