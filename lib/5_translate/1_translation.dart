import 'package:flutter/material.dart';
import 'package:flutter_course/app_localization.dart';
import 'package:flutter_course/main.dart';

class Translation extends StatefulWidget {
  const Translation({Key? key}) : super(key: key);

  @override
  State<Translation> createState() => _TranslationState();
}

class _TranslationState extends State<Translation> {

  bool showPassword = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(App_Localization.language == "en"){
            App_Localization.language = "ar";
            MyApp.set_local(context, Locale(App_Localization.language));
          }else{
            App_Localization.language = "en";
            MyApp.set_local(context, Locale(App_Localization.language));
          }
        },
        child: Icon(Icons.language),
      ),
      appBar: AppBar(
        title: Text(App_Localization.of(context).translate("sign_in")),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  ///label
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(App_Localization.of(context).translate("email"))
                    ),
                  ),
                  SizedBox(height: 20,),
                  ///password
                  TextField(
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(App_Localization.of(context).translate("password")),
                      suffix: GestureDetector(
                          onTap: (){
                            setState((){
                              showPassword = !showPassword;
                            });
                          },
                          child: Icon(showPassword?Icons.visibility:Icons.visibility_off)),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
