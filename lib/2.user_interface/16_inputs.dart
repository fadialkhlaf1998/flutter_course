import 'package:flutter/material.dart';

class MyInputs extends StatefulWidget {
  const MyInputs({Key? key}) : super(key: key);

  @override
  State<MyInputs> createState() => _MyInputsState();
}

class _MyInputsState extends State<MyInputs> {

  bool checked = true;
  bool showPassword = true;

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
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(),

                ///outline border
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),

                ///hint
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    hintText: "Email"
                  ),
                ),

                ///label
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Username")
                  ),
                ),

                ///password
                TextField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Password"),
                    suffix: GestureDetector(
                        onTap: (){
                          setState((){
                            showPassword = !showPassword;
                          });
                        },
                        child: Icon(showPassword?Icons.visibility:Icons.visibility_off)),
                  ),
                ),

                Checkbox(value: checked, onChanged: (val){
                  setState((){
                    checked = val!;
                  });
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

