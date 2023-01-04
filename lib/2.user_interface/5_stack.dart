import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

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
            child: Column(
              children: [

                Container(
                  height: MediaQuery.of(context).size.height/2/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amberAccent,
                  child: Stack(
                    children: [
                      Container(width: 50,height: 50,color: Colors.blue,),
                      Container(width: 50,height: 50,color: Colors.green,),
                      Container(width: 50,height: 50,color: Colors.purpleAccent,),
                    ],
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/2/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(width: 50,height: 50,color: Colors.blue,),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(width: 50,height: 50,color: Colors.green,),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(width: 50,height: 50,color: Colors.purpleAccent,),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/2/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.orange,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        child: Container(width: 50,height: 50,color: Colors.blue,),
                      ),
                      Positioned(
                        left: 100,
                        top: 20,
                        child: Container(width: 50,height: 50,color: Colors.green,),
                      ),
                      Positioned(
                        right: 50,
                        bottom: 10,
                        child: Container(width: 50,height: 50,color: Colors.purpleAccent,),
                      ),
                    ],
                  ),
                ),

              ],
            )
          )
      ),
    );
  }
}
