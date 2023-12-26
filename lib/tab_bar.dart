import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tabBar extends StatefulWidget {
  const tabBar({super.key});

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp",),
          bottom: TabBar(
            indicatorColor: Colors.white,
              tabs: [
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Calls",)
          ]),
        ),
body: Padding(
  padding: EdgeInsets.all(8.0),
  child:   Column(
    children: [
      Expanded(
        child: TabBarView(children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
        ]),
      )
    ],
  ),
),

      ),
    );
  }
}
