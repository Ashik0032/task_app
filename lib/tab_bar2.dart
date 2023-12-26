import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class tabbar2 extends StatefulWidget {
  const tabbar2({super.key});

  @override
  State<tabbar2> createState() => _tabbar2State();
}

class _tabbar2State extends State<tabbar2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("ashik"),
          ),
          body: Column(
            children: [
              Container(
                height: width*0.12,
                width: width*1,
                margin: EdgeInsets.all(width*0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  color: Colors.grey[400],
                ),
                child: TabBar(
                  labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.purple
                    ),
                    tabs: [
                  Tab(
                    text: "A",
                  ),
                  Tab(
                    text: "B",

                  ),
                  Tab(
                    text: "C",
                  ),
                      Tab(
                        text: "D",
                      ),
                ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
