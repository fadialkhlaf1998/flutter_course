import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(color: Colors.red,child: Center(child: Text("Page 3",style: TextStyle(color: Colors.white),),),));
  }
}
