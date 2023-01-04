import 'package:flutter/material.dart';

class HomeWork2 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Color lightRed = const Color(0XFFa40200);
  Color darkGrey = const Color(0XFF262c32);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: darkGrey,
        title: Text("Home Work 2"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Icon(Icons.list),
        ),
      ),
      drawer: Drawer(
        backgroundColor: darkGrey.withOpacity(0.5),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height/2,
            // color: Colors.white,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: lightRed,
                  child: Icon(Icons.person,size: 40,color: Colors.white),
                ),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Row(
                    children: [
                      Icon(Icons.home , color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Home",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Row(
                    children: [
                      Icon(Icons.shopping_cart_outlined , color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Cart",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Row(
                    children: [
                      Icon(Icons.favorite , color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Wishlist",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Row(
                    children: [
                      Icon(Icons.person , color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Profile",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home_work_2/background.jpg"),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                child: Image.asset("assets/home_work_2/bus_logo_white.png"),
              ),
              Text("Welcom",style: TextStyle(color: lightRed,fontSize: 40,fontWeight: FontWeight.bold),),
              Container(
                width: MediaQuery.of(context).size.width*0.7,
                height: 50,
                decoration: BoxDecoration(
                  color: lightRed,
                ),
                child: Center(
                  child: Text("Continue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
