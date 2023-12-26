import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/data_pass.dart';
import 'package:task_app/first_page.dart';
import 'package:task_app/flipkart.dart';
import 'package:task_app/grid_view.dart';
import 'package:task_app/list_grid-task.dart';
import 'package:task_app/new_app.dart';
import 'package:task_app/packages.dart';
import 'package:task_app/task_in_flutter.dart';
import 'package:task_app/widgrt_Page.dart';
import 'package:task_app/splash_screen.dart';
import 'package:task_app/tab_bar.dart';
import 'package:task_app/tab_bar2.dart';
import 'package:task_app/task_text_form.dart';
import 'package:task_app/text_form.dart';

import 'BottomNavigationBar.dart';
import 'demo flipkart.dart';
import 'dropdown.dart';
import 'list_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myApp());
}
var width;
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme()
        ),
        debugShowCheckedModeBanner: false,
        home:ui_task(),
      ),
    );
  }
}



class colorPage {
  static const primaryColor = Color(0xff8447fa);
  static const c1 = Color(0xff814ce4);
  // static const c2 = Color(0xff7832ff);
  // static const c4 = Color(0xff7734ff);
  // static const c5 = Color(0xff8e0efd);

}

