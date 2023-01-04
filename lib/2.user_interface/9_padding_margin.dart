import 'package:flutter/material.dart';

class MyPaddingMargin extends StatelessWidget {
  const MyPaddingMargin({Key? key}) : super(key: key);

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

             Container(
               width: 190,
               height: 190,
               color: Colors.grey,
               child: Wrap(
                 children: [
                   Container(width: 50,height: 50,color: Colors.amber,),
                   Container(width: 50,height: 50,color: Colors.blue,),
                   Container(width: 50,height: 50,color: Colors.red,),

                   Container(width: 50,height: 50,color: Colors.purple,),

                   Padding(
                     // padding: const EdgeInsets.all(5.0),
                     // padding: const EdgeInsets.symmetric(horizontal: 10),
                     padding: const EdgeInsets.only(left: 10),
                     child: Container(width: 50,height: 50,color: Colors.white,),
                   ),

                   Container(width: 50,height: 50,color: Colors.black,),

                   Container(width: 50,height: 50,color: Colors.green,),
                   Container(width: 50,height: 50,color: Colors.blueGrey,),
                   Container(width: 50,height: 50,color: Colors.greenAccent,),
                 ],
               ),
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 Container(width: 50,height: 50,color: Colors.amber,),
                 Container(margin: EdgeInsets.all(10),width: 50,height: 50,color: Colors.red,),
                 Container(width: 50,height: 50,color: Colors.blue,),
               ],
             ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(width: 50,height: 50,color: Colors.amber,),
                  Container(padding: EdgeInsets.all(10),width: 50,height: 50,color: Colors.red,),
                  Container(width: 50,height: 50,color: Colors.blue,),
                ],
              ),

            ],
          )
      ),
    );
  }
}
