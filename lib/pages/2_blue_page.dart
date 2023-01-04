import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(color: Colors.blue,child: Center(child: Text("Page 2",style: TextStyle(color: Colors.white),),),));
  }
}
