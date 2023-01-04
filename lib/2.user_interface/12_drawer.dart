import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        width: 300,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: (){
                      _scaffoldKey.currentState!.closeDrawer();
                    },
                    icon: Icon(Icons.close))
              ],
            ),
            SizedBox(height: 20,),
            CircleAvatar(
              radius: 40,
              child: Icon(Icons.person,size: 40),
            ),
            SizedBox(height: 20,),
            Text("Text"),
            SizedBox(height: 20,),
            Text("Text"),
            SizedBox(height: 20,),
            Text("Text"),
            SizedBox(height: 20,),
            Text("Text")
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Center(
            child: GestureDetector(
              onTap: (){
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text("Drawer",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
