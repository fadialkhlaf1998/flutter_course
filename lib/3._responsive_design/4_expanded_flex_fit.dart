import 'package:flutter/material.dart';

class ExpandedFlexFit extends StatelessWidget {
  const ExpandedFlexFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  ///width / height
                  childAspectRatio: 2/3,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Expanded(
                        flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("assets/apple-logo.png"),
                                fit: BoxFit.fill
                              )
                            ),
                          )
                      ),
                      Expanded(
                        flex: 1,
                          child: Container(
                            color: Colors.blue,
                            child: FittedBox(
                              child: Text("data$index"),
                            ),
                          )
                      )
                    ],
                  );
                })
        ),
      ),
    );
  }
}
