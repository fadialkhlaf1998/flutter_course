import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

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
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context,index){
              return Center(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(1,1),
                              spreadRadius: 1,
                              blurRadius: 1
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/background.webp"),
                                  fit: BoxFit.cover
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: Offset(1,1),
                                    spreadRadius: 1,
                                    blurRadius: 1
                                )
                              ]
                          ),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width*0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Title of Product",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                              Text("10000 s.p",style: TextStyle(color: Colors.grey,fontSize: 14,),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
