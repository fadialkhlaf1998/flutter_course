import 'package:flutter/material.dart';

class WidgetsChanges extends StatefulWidget {
  const WidgetsChanges({Key? key}) : super(key: key);

  @override
  State<WidgetsChanges> createState() => _WidgetsChangesState();
}

class _WidgetsChangesState extends State<WidgetsChanges> {

  bool loading = false;
  bool isRed = false;

  changrColor(){
    setState(() {
      isRed = !isRed;
    });
  }
  loadingState(){
    setState(() {
      loading = !loading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  changrColor();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Text(isRed?"press me for yellow":"press me for red",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  loadingState();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Text(loading?"press me to stop loading":"press me to start loading",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 100,
                height: 100,
                color: isRed?Colors.red:Colors.amberAccent,
                child: Center(
                  child: loading?CircularProgressIndicator():Text("loading..."),
                ),
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
