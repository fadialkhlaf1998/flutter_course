import 'package:flutter/material.dart';
import 'package:flutter_course/pages/1_green_page.dart';
import 'package:flutter_course/pages/2_blue_page.dart';
import 'package:flutter_course/pages/3_red_page.dart';
import 'package:flutter_course/pages/4_yellow_page.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
        ],
      ),
      body: currentIndex == 0
      ?GreenPage()
      :currentIndex == 1
      ?BluePage()
      :currentIndex == 2
      ?RedPage()
      :YellowPage(),
    );
  }
}
