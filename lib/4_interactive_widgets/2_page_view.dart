import 'package:flutter/material.dart';
import 'package:flutter_course/pages/1_green_page.dart';
import 'package:flutter_course/pages/2_blue_page.dart';
import 'package:flutter_course/pages/3_red_page.dart';
import 'package:flutter_course/pages/4_yellow_page.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {

  int currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
            _pageController.animateToPage(currentIndex, duration: Duration(milliseconds: 800), curve: Curves.ease);
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
      body: SafeArea(
        child: Container(
          child: PageView(
            onPageChanged: (index){
              setState(() {
                currentIndex = index;
              });
            },
            controller: _pageController,
            children: [
              GreenPage(),
              BluePage(),
              RedPage(),
              YellowPage(),
            ],
          ),
        ),
      ),
    );
  }
}
