import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  const MySafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
        ),
      ),
    );
  }
}
