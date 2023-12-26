import 'package:flutter/material.dart';

import 'main.dart';

class textFormPage extends StatefulWidget {
  const textFormPage({super.key});

  @override
  State<textFormPage> createState() => _textFormPageState();
}

class _textFormPageState extends State<textFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form "),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              // textCapitalization: TextCapitalization.characters,
              //  textCapitalization: TextCapitalization.words,
              // textCapitalization: TextCapitalization.sentences,
              // maxLength: 5,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              // maxLines: 5,
              // minLines: 3,
              style: TextStyle(
                fontSize: width*0.05,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.apple),
                prefixText: "hello",
                prefixStyle: TextStyle(
                  fontSize: width*0.05,
                  fontWeight: FontWeight.w700
                ),
                labelText: "Name",
                labelStyle: TextStyle(
                  fontSize: width*0.05,
                  fontWeight: FontWeight.w600,
                ),
                hintText: "pleace enter your name",
                hintStyle: TextStyle(
                  fontSize: width*0.05,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.03),
                  borderSide: BorderSide(
                    color: Colors.red,
                  )
                ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.1),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
