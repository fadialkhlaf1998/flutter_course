import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';

class MyJsonDecoder extends StatefulWidget {
  const MyJsonDecoder({Key? key}) : super(key: key);

  @override
  State<MyJsonDecoder> createState() => _MyJsonDecoderState();
}

class _MyJsonDecoderState extends State<MyJsonDecoder> {

  bool loading = false;
  String image = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api Request")),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: loading?Center(child: CircularProgressIndicator(),):
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      dog();
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Dog",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      duck();
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Duck",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              image.isEmpty?Center():Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.width*0.9,
                child: Image.network(image),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///https://github.com/toddmotto/public-apis

  duck()async{

    var request = http.Request('GET', Uri.parse('https://random-d.uk/api/random'));
    setState(() {
      loading = true;
    });
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      DuckDecoder decoder = DuckDecoder.fromJson(data) ;
      setState(() {
        image = decoder.url;
        loading = false;
      });
    }
    else {
      print(response.reasonPhrase);
      setState(() {
        loading = false;
      });
    }

  }
  dog()async{

    var request = http.Request('GET', Uri.parse('https://dog.ceo/api/breeds/image/random'));
    setState(() {
      loading = true;
    });
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      DogDecoder decoder = DogDecoder.fromJson(data);

      setState(() {
        image = decoder.message;
        loading = false;
      });
    }
    else {
      print(response.reasonPhrase);
      setState(() {
        loading = false;
      });
    }

  }
}




class DogDecoder {
  DogDecoder({
    required this.message,
    required this.status,
  });

  String message;
  String status;

  factory DogDecoder.fromJson(String str) => DogDecoder.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DogDecoder.fromMap(Map<String, dynamic> json) => DogDecoder(
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "message": message,
    "status": status,
  };
}

class DuckDecoder {
  DuckDecoder({
    required this.url,
    required this.message,
  });

  String url;
  String message;

  factory DuckDecoder.fromJson(String str) => DuckDecoder.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DuckDecoder.fromMap(Map<String, dynamic> json) => DuckDecoder(
    url: json["url"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "url": url,
    "status": message,
  };
}

