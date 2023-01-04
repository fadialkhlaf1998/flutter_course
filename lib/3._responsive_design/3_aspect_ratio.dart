import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                ///width / height
                childAspectRatio: 1/1,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context,index){
                return Container(
                  color: index%2==0?Colors.amberAccent:Colors.green,
                  child: Center(
                    child: Text(index.toString(),style: TextStyle(color: Colors.white,fontSize: 30),),
                  ),
                );
              })
        ),
      ),
    );
  }
}
