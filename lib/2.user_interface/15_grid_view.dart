import 'package:flutter/material.dart';

class MyGrideView extends StatelessWidget {
  const MyGrideView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("App Bar"),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: GridView.builder(
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 4/4
            ),
            itemBuilder: (context,index){
              return Container(
                color: Colors.blue,
              );
            },
          ),
        ),
      ),
    );
  }
}
