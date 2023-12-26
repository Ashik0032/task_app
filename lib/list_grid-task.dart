import 'package:flutter/material.dart';

import 'main.dart';


class listGrid extends StatefulWidget {
  const listGrid({super.key});

  @override
  State<listGrid> createState() => listGridState();
}

class listGridState extends State<listGrid> {

  List pic=[
    {
      "images":"images/404.jpeg",
      "text":"404",
    },
    {
      "images":"images/BMW.jpg",
      "text":"Bmw",
    },
    {
      "images":"images/foodball.jpg",
      "text":"Foodball",
    },
    {
      "images":"images/naruto.jpeg",
      "text":"Naruto",
    },
  ];
  List image=[
    {
      "images": "images/danger.jpg",
      "text1": "Danger",
      "text2": "Toxic",
    },
    {
      "images": "images/Farzi X Pagol.jpeg",
      "text1": "Pikachu",
      "text2": "Pokemon",
    },
    {
      "images": "images/fire.jpg",
      "text1": "Fire",
      "text2": "night",
    },
    {
      "images": "images/love me.jpg",
      "text1": "Love",
      "text2": "Me",
    },
    {
      "images": "images/NSEW.jpg",
      "text1": "North",
      "text2": "South",
    },
    {
      "images": "images/orsrc30512.jpg",
      "text1": "Pro",
      "text2": "King",
    },
    {
      "images": "images/panda.jpeg",
      "text1": "Panda",
      "text2": "bear",
    },
    {
      "images": "images/welldone.png",
      "text1": "text",
      "text2": "text",
    },
    {
      "images": "images/single.jpg",
      "text1": "Boy",
      "text2": "single",
    },
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: width * 0.35,
              width: width * 1,
              child: ListView.builder(
                itemCount: pic.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: width * 0.25,
                    width: width * 0.25,
                    margin: EdgeInsets.all(width * 0.03),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width * 0.03),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(0, 6))
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width * 0.2,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(pic[index]["images"]),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(width * 0.03),
                          ),
                        ),
                        Text(
                          pic[index]["text"],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
              "IMAGES",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              height: width*1.05,
                width: width*1,
                 //margin: EdgeInsets.all(width*0.02),
                child: GridView.builder(
                  itemCount: 9,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: width * 0.03,
                mainAxisSpacing: width * 0.03,
                childAspectRatio:0.8,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: width * 0.25,
                  width: width * 0.25,
                  margin: EdgeInsets.all(width*0.015),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width * 0.03),
                    boxShadow:[ BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: Offset(0, 6)
                    )
    ]
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.19,
                      width: width * 0.19,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image[index]["images"]),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(width * 0.03),
                      ),
                    ),
                    Text(
                     image[index]["text1"],
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      image[index]["text2"],
                    style: TextStyle(
                      fontSize: 15,
                    ),),
                  ],
                ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
