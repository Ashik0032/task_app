import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'demo flipkart.dart';
import 'list_grid-task.dart';
import 'list_view.dart';
import 'new_app.dart';
import 'widgrt_Page.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int selectIndex=0;
  List pages=[
    newFile(),
    newPage(),
    listGrid(),
    demoFlipkart(),
    listView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex:selectIndex,
        onTap: (value) {
          selectIndex=value!;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,
              ),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons. manage_search_outlined,
              ),
              label: "Categories"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none,
              ),
              label: "Notifications"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
              ),
              label: "Account"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,
              ),
              label: "cart"
          ),
        ],

      ),
    );
  }
}
