import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class packagePage extends StatefulWidget {
  const packagePage({super.key});

  @override
  State<packagePage> createState() => _packagePageState();
}

class _packagePageState extends State<packagePage> {
  var file;
   pickFile(ImageSource) async {
    final imageFile=await ImagePicker.platform.pickImage(source: ImageSource);
    file=File(imageFile!.path);
    if(mounted){
      setState(() {
        file=File(imageFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Packages",
        style: GoogleFonts.damion(
          fontSize: 20,
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                 radius: width*0.1,
                  backgroundImage: AssetImage("images/giphy.gif"),
                  // color: Colors.red,
                ),
                Container(
                  height: width*0.2,
                  width: width*0.2,
                  // color: Colors.white,
                  child: Lottie.asset("images/Animation - 1697433735638.json"),
                ),
                Container(
                  height: width*0.15,
                  width: width*0.15,
                  // color: Colors.white,
                  child: SvgPicture.asset("images/Preview.svg"),
                ),
                Container(
                  height: width*0.2,
                  width: width*0.2,
                  // color: Colors.white,
                  child: CachedNetworkImage(imageUrl:"http://clipart-library.com/images_k/cartoon-dog-transparent/cartoon-dog-transparent-1.png"),
                ),
              ],
            ),
            SizedBox(height: width*0.02,),
            Text("hello",
            style: GoogleFonts.poppins(
              fontSize: width*0.08,
            ),
            ),
            SizedBox(height: width*0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    pickFile(ImageSource.camera);
                  },
                  child: Container(
                    height: width*0.15,
                    width: width*0.2,
                    child: Icon(Icons.camera_alt,
                    color: Colors.white,
                    size: width*0.08),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                      borderRadius: BorderRadius.circular(width*0.03),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    pickFile(ImageSource.gallery);
                  },
                  child: Container(
                    height: width*0.15,
                    width: width*0.2,
                    child: Icon(Icons.image_sharp,
                    color: Colors.white,
                    size: width*0.08),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: width*0.1),
           file!=null? Container(
              height: width*0.7,
              width: width*0.5,
              color: Colors.grey,
             child: Image.file(file,fit: BoxFit.fill,),
            )
               :Container(
             height: width*0.7,
             width: width*0.7,
             color: Colors.grey,
           )
          ],
        ),
      ),
    );
  }
}

