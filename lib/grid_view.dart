import 'package:flutter/material.dart';

import 'list_view.dart';
import 'main.dart';

class gridView extends StatefulWidget {
  const gridView({super.key});

  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                physics: BouncingScrollPhysics(),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: width*0.03,
                  mainAxisSpacing: width*0.03,
                  childAspectRatio: 1
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width*0.25,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(width*0.03),
                    ),
                  );
                },

              ),
            )
          ],
        ),
      ),
    );
  }
}
