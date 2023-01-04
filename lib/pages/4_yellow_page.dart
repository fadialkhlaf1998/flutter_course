import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(color: Colors.yellow,child: Center(child: Text("Page 4",style: TextStyle(color: Colors.white),),),));
  }
}
