import 'package:flutter/material.dart';

class MQuery extends StatelessWidget {
  const MQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: Center(
                    child: Text("100%" ,style: TextStyle(color: Colors.white),),
                  ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.9,
                  color: Colors.blue,
                  child: Center(
                    child: Text("90%" ,style: TextStyle(color: Colors.white),),
                  ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.8,
                  color: Colors.amber,
                  child: Center(
                    child: Text("80%" ,style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*0.8,
                  color: Colors.green,
                  child: Center(
                    child: Text("80% width / 50% height" ,style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
