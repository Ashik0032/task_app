import 'package:flutter/material.dart';

import 'main.dart';

class dropDown extends StatefulWidget {
  const dropDown({super.key,});

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
   String? dropdown_value;
  var listItem =[
    "A",
    "B",
    "C",
    "D",
    "E",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app"),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Container(
          // padding: EdgeInsets.only(left: width*0.5,right: width*0.5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(width*0.03),
          ),
          child: DropdownButton(
            hint: Text("Select Item:"),
            dropdownColor: Colors.white,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: width*0.08,
            isExpanded: true,
            underline: SizedBox(),
            style: TextStyle(
              color: Colors.black,
              fontSize: width*0.05,

            ),
            value: dropdown_value,
              onChanged: (newValue){
              setState(() {
                dropdown_value=newValue;
              });
              },
            items: listItem.map((valueItem){
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
