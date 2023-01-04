import 'package:flutter/material.dart';
import 'package:flutter_course/2.user_interface/10_gesture_detector.dart';
import 'package:flutter_course/2.user_interface/11_safe_area.dart';
import 'package:flutter_course/2.user_interface/12_drawer.dart';
import 'package:flutter_course/2.user_interface/13_app_bar.dart';
import 'package:flutter_course/2.user_interface/14_list_view.dart';
import 'package:flutter_course/2.user_interface/15_grid_view.dart';
import 'package:flutter_course/2.user_interface/16_inputs.dart';
import 'package:flutter_course/2.user_interface/1_container.dart';
import 'package:flutter_course/2.user_interface/2_center.dart';
import 'package:flutter_course/2.user_interface/3_column.dart';
import 'package:flutter_course/2.user_interface/4_row.dart';
import 'package:flutter_course/2.user_interface/5_stack.dart';
import 'package:flutter_course/2.user_interface/6_wrap.dart';
import 'package:flutter_course/2.user_interface/7_image_icon.dart';
import 'package:flutter_course/2.user_interface/8_text.dart';
import 'package:flutter_course/2.user_interface/9_padding_margin.dart';
import 'package:flutter_course/3._responsive_design/1_media_query.dart';
import 'package:flutter_course/3._responsive_design/2_widget_changes.dart';
import 'package:flutter_course/3._responsive_design/3_aspect_ratio.dart';
import 'package:flutter_course/3._responsive_design/4_expanded_flex_fit.dart';
import 'package:flutter_course/3._responsive_design/5_orintation_design.dart';
import 'package:flutter_course/4_interactive_widgets/1_bottom_nav_bar.dart';
import 'package:flutter_course/4_interactive_widgets/2_page_view.dart';
import 'package:flutter_course/4_interactive_widgets/3_loading_then_response.dart';
import 'package:flutter_course/4_interactive_widgets/4_animation.dart';
import 'package:flutter_course/5_translate/1_translation.dart';
import 'package:flutter_course/6_platform_integration/1_api_request.dart';
import 'package:flutter_course/6_platform_integration/2_json_decoder.dart';
import 'package:flutter_course/app_localization.dart';
import 'package:flutter_course/homeworks/home_work_1.dart';
import 'package:flutter_course/homeworks/home_work_2.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static void set_local(BuildContext context , Locale locale){
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.set_locale(locale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale? _locale;

  void set_locale(Locale locale){
    setState(() {
      _locale=locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        ///language
        locale: _locale,
        supportedLocales: [Locale('en', ''), Locale('ar', '')],
        localizationsDelegates: const [
          App_Localization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (local, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == local!.languageCode) {
              App_Localization.language = supportedLocale.languageCode;
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        ///language


        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        // home: const MyContainer()
        // home: const MyCenter()
        // home: const MyColumn()
        // home: const MyRow()
        // home: const MyStack()
        // home: const MyWrap()
        // home: const MyImageIcon()
        // home: const MyText()
        // home: const MyPaddingMargin()
        // home: const MyGesturDetector()
        // home: const MySafeArea()
        // home: MyDrawer()
        // home: const MyAppBar()
        // home: const MyListView()
        // home: const MyGrideView()
        // home: const MyInputs()
        // home: const MQuery()
        // home: const WidgetsChanges()
        // home: const MyAspectRatio()
        // home: const ExpandedFlexFit()
        // home: const MyOrintationDesign()
        // home: const MyBottomNavBar()
        // home: const MyPageView()
        // home: const LoadingResponse()
        // home: const MyAnimation()

        // home: const Translation()

        // home: const ApiRequest()
        home: const MyJsonDecoder()

        ///for test
        // home: MyHomePage(title: "Home Work 2")
        // home:HomeWork1()
        // home:HomeWork2()
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,

      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Icon(Icons.list),
        ),
      ),

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

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcom To Best Flutter Course")
          ],
        ),
      ),

    );
  }

  homeWord1(){
    return  Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
