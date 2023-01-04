import 'package:flutter/material.dart';
import 'package:flutter_course/models/emoji.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class LoadingResponse extends StatefulWidget {
  const LoadingResponse({Key? key}) : super(key: key);

  @override
  State<LoadingResponse> createState() => _LoadingResponseState();
}

class _LoadingResponseState extends State<LoadingResponse> {
  MyEmoji? emoji ;
  bool loading = true;

  loadData()async{

    setState(() {
      loading = true;
    });


    emoji = await myApi();
    if(emoji !=null){
      setState(() {
        loading = false;
      });
    }else{
      loadData();
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          loadData();
        },
      child: Icon(Icons.refresh),
      ),
      body: SafeArea(
          child: Container(

            child: loading?
                Center(child: CircularProgressIndicator(),)
                :GridView.builder(
                itemCount: emoji!.htmlCode.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1
                ),
                padding: EdgeInsets.only(bottom: 100),
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.width/2,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 1,
                            spreadRadius: 1,

                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Html(data: emoji!.htmlCode[index],style: {
                            "*":Style(
                                fontSize: FontSize(MediaQuery.of(context).size.width/5),
                              // textAlign: TextAlign.center,
                              margin: EdgeInsets.only(top: 50)
                            )
                          },),
                        ],
                      ),
                    ),
                  );
                }),
          )
      ),
    );
  }

  Future<MyEmoji?> myApi()async{
    var request = http.Request('GET', Uri.parse('https://emojihub.herokuapp.com/api/random'));


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String data = (await response.stream.bytesToString());
      print(data);
      return MyEmoji.fromJson(data);
    }
    else {
    print(response.reasonPhrase);
    return null;
    }

  }
}
