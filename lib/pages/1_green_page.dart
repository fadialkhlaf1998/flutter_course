import 'dart:convert';

import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(color: Colors.green,child: Center(child: Text("Page 1",style: TextStyle(color: Colors.white),),),));
  }
}
