import 'package:flutter/material.dart';

class MyImageIcon extends StatelessWidget {
  const MyImageIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [

            Image.network("https://www.sketchappsources.com/resources/source-image/geometry-background.png"),

            SizedBox(height: 40,),

            Image.asset("assets/background.webp"),

            SizedBox(height: 40,),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image:const DecorationImage(
                      image: NetworkImage("https://www.sketchappsources.com/resources/source-image/geometry-background.png"),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image:const DecorationImage(
                          image: AssetImage("assets/background.webp"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
            ),


            SizedBox(height: 40,),
            
            Icon(
                Icons.account_box,
                color: Colors.blue,
                size: 50
            ),

            SizedBox(height: 40,),

            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(1,2)
                  )
                ]
              ),
              child: Icon(Icons.add,color: Colors.white,size: 50),
            ),

            SizedBox(height: 40,),

          ],
        ),
      )
    );
  }
}
