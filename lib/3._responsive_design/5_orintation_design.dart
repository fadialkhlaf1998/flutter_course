import 'package:flutter/material.dart';


class MyOrintationDesign extends StatefulWidget {
  const MyOrintationDesign({Key? key}) : super(key: key);

  @override
  State<MyOrintationDesign> createState() => _MyOrintationDesignState();
}

class _MyOrintationDesignState extends State<MyOrintationDesign> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orientation"),),
      body: SafeArea(
        child: MediaQuery.of(context).orientation == Orientation.portrait?vertical(context):horizantel(context),
      ),
    );
  }

  vertical(BuildContext context){
    return Column(
      children: [
        Container(
          height: 70,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context,index){
                return Center(
                  child: Container(
                    width: 70,
                    height: 30,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              // offset: Offset(1,1),
                              spreadRadius: 0.1,
                              blurRadius: 0.1
                          )
                        ]
                    ),
                    child: TextButton(
                      onPressed: (){

                      }, child: Text("Data-$index",style: TextStyle(color: Colors.white),),),
                  ),
                );
              }
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child:GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: 100,
                itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/background.webp"),
                          fit: BoxFit.cover
                      ),
                    ),
                    child: Center(
                      child: Text("$index",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold)),
                    ),
                  );
                }
            ),
          ),
        )
      ],
    );
  }
  horizantel(BuildContext context){
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2,
                ),
                itemCount: 100,
                itemBuilder: (context,index){
                  return Center(
                    child: Container(
                      // width: 70,
                      // height: 30,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                // offset: Offset(1,1),
                                spreadRadius: 0.1,
                                blurRadius: 0.1
                            )
                          ]
                      ),
                      child: TextButton(
                        onPressed: (){

                        }, child: Text("Data-$index",style: TextStyle(color: Colors.white),),),
                    ),
                  );
                }
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child:GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: 100,
                itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/background.webp"),
                          fit: BoxFit.cover
                      ),
                    ),
                    child: Center(
                      child: Text("$index",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold)),
                    ),
                  );
                }
            ),
          ),
        )
      ],
    );
  }
}

