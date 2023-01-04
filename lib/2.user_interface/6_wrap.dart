import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
          child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Wrap(
                spacing: 0,
                runSpacing: 0,
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                children: [
                  Container(width: 200,height: 50,color: Colors.blue,),
                  Container(width: 200,height: 50,color: Colors.green,),
                  Container(width: 200,height: 50,color: Colors.purpleAccent,),
                ],
              )
          )
      ),
    );
  }
}
