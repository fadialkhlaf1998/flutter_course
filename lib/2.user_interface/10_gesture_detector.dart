import 'package:flutter/material.dart';

class MyGesturDetector extends StatelessWidget {
  const MyGesturDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(
                onTap: (){
                  print('tap');
                },
                onDoubleTap: (){
                  print('double tap');
                },
                onLongPress: (){
                  print('long press');
                },

                onHorizontalDragStart:(position){
                  print("Dx: "+position.localPosition.dx.toString()+","+"Dy: "+position.localPosition.dy.toString());
                },
                onHorizontalDragUpdate:(position){
                  print("Dx: "+position.localPosition.dx.toString()+","+"Dy: "+position.localPosition.dy.toString());
                },
                child: Container(
                  width: 190,
                  height: 190,
                  color: Colors.grey,
                  child: Center(
                    child: Text("Press Me",style: TextStyle(color: Colors.white,fontSize: 20),),
                  )
                ),
              ),


            ],
          )
      ),
    );
  }
}
