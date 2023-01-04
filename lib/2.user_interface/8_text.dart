import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(
                height: 40,
              ),

              Text("Text"),

              ///font size / color
              Text(
                "Text",
                style: TextStyle(fontSize: 20, color: Colors.purple),
              ),

              ///font weight
              Text(
                "Text",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),

              ///backgrounf color
              Text(
                "Text",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.amberAccent),
              ),

              ///Decoration
              Text(
                "Text",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.amberAccent,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1),
              ),

              ///font
              Text(
                "Text",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.amberAccent,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                    fontFamily: "Abaya"),
              ),

              ///letter spacing / word spacing
              Text(
                "Text Text2",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    wordSpacing: 20),
              ),

              ///Multi line text
              Text(
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                maxLines: 6,
              ),
            ],
          )),
    );
  }
}
