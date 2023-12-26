import 'package:flutter/material.dart';

import 'main.dart';
class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
            padding: EdgeInsets.all(width*0.03),
            child: Column(children: [
              Container(
                height: width*0.2,
                width: width*1,
                child: ListView.separated(
                  itemCount: 15,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: width * 0.8,
                      width: width * 0.25,
                      // margin: EdgeInsets.only(bottom: width*0.03),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width*0.03,
                    );
                },
                ),
              ),
            ])));
  }
}
