import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 50,),

          ///Height Width Color
          Container(
            width: 100,
            height: 40,
            color: Colors.blue,
          ),

          ///decoration
          ///Border
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black,width: 2),
            ),
          ),

          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.symmetric(horizontal: BorderSide(color: Colors.black,width: 2,)),
            ),
          ),

          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 2
                )
              )
            ),
          ),

          ///Border Radius
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10)
            ),
          ),

          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
            ),
          ),

          ///Shape
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle
            ),
          ),

          ///Gradient
          Container(
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.purpleAccent,
                    Colors.red,
                  ],
                )
            ),
          ),

          Container(
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue,
                    Colors.purpleAccent,
                    Colors.red,
                  ],
                )
            ),
          ),


          ///Shadow
          Container(
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 1),
                  spreadRadius: 1,
                  blurRadius: 1
                ),
              ]
            ),
          ),

          Container(
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 1
                  ),
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(-1, -1),
                      spreadRadius: 1,
                      blurRadius: 1
                  )
                ]
            ),
          ),


          ///use all decoration
          Container(
            width: 140,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurple.shade400,
                    Colors.deepPurple.shade200,
                  ],
                ),

                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 1
                  ),
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(-1, -1),
                      spreadRadius: 1,
                      blurRadius: 1
                  )
                ]
            ),
          ),


          SizedBox(height: 50,),
        ],
      ),
    );
  }

}
