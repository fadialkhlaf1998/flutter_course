import 'package:flutter/material.dart';

/// Curves class
/// https://api.flutter.dev/flutter/animation/Curves-class.html

class MyAnimation extends StatefulWidget {
  const MyAnimation({Key? key}) : super(key: key);

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {

  bool state_1 = false;
  bool state_2 = false;
  bool state_3 = false;
  bool state_4 = false;
  bool state_5 = false;
  bool state_6 = false;
  bool state_7 = false;
  bool state_8 = false;


  int fiveState = 0;
  double turns = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Text("Animated Container",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      state_1 = !state_1;
                    });
                  },
                  child: AnimatedContainer(
                      duration: Duration(milliseconds: 800),
                      color: Colors.amber,
                    height: state_1?200:50,
                    width: 200,
                    child: Center(
                      child: Text("Animated Container",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      state_2 = !state_2;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    color: Colors.red,
                    height: 50,
                    width: state_2?300:200,
                    child: Center(
                      child: Text("Animated Container",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      state_3 = !state_3;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    color: state_3?Colors.green:Colors.blue,
                    height: 50,
                    width: 200,
                    child: Center(
                      child: Text("Animated Container",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      state_4 = !state_4;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 800),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(state_4?0:20)
                    ),
                    height: 50,
                    width: 200,
                    child: Center(
                      child: Text("Animated Container",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                divider(context),
                SizedBox(height: 10,),

                Text("Animated Align",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(fiveState < 4){
                        fiveState ++;
                      }else{
                        fiveState = 0;
                      }
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                    child: AnimatedAlign(
                      alignment: fiveState==0?Alignment.center:
                      fiveState==1?Alignment.topRight:
                      fiveState==2?Alignment.topLeft:
                      fiveState==3?Alignment.bottomLeft:Alignment.bottomRight,
                      duration: Duration(milliseconds: 1000),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                divider(context),
                SizedBox(height: 10,),

                Text("Animated Corss Fade",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      state_5 = !state_5;
                    });
                  },
                  child: AnimatedCrossFade(
                      firstChild:
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                      ),
                      secondChild: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                      crossFadeState: state_5?CrossFadeState.showFirst:CrossFadeState.showSecond,
                      duration: Duration(milliseconds: 1000)),
                ),

                SizedBox(height: 10,),
                divider(context),
                SizedBox(height: 10,),

                Text("Animated Rotation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      turns += 0.25;
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: AnimatedRotation(
                        turns: turns,
                        duration: Duration(seconds: 1),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15))
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                divider(context),
                SizedBox(height: 10,),

                Text("Animated Swicher",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      state_6 = !state_6;
                    });
                  },
                  child: AnimatedSwitcher(
                    duration: Duration(seconds: 1),
                    reverseDuration: Duration(seconds: 1),
                    child: state_6?
                    Icon(Icons.play_arrow,size: 50,key: Key("key1"),)
                        :Icon(Icons.pause,size: 50,key: Key("key2")),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  divider(BuildContext context){
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
    );
  }
}
