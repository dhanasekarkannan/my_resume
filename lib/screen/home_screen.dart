
import '../bloc/sidebar_navigation_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      
      backgroundColor: Colors.transparent,
    appBar: AppBar(brightness: Brightness.dark,
    backgroundColor : Colors.transparent,),
      drawer: Drawer(
        child: ListView(),
        semanticLabel: "Open",
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.repeated,
                  colors: [const Color(0xFF771D32), const Color(0xFFE65258)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Text("Dhansekar", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                      IconButton(icon: Icon(Icons.ac_unit, color: Colors.white,), onPressed: () {}),
                      IconButton(icon: Icon(Icons.ac_unit, color: Colors.white,), onPressed: () {}),
                      IconButton(icon: Icon(Icons.ac_unit, color: Colors.white,), onPressed: () {}),
                      IconButton(icon: Icon(Icons.ac_unit, color: Colors.white,), onPressed: () {}),
                    ])
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(400),
                        topRight: Radius.circular(400),
                        bottomLeft: Radius.circular(400)),
                    child: Container(
                        width: 300,
                        height: 300,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            spreadRadius: 65.0, //extend the shadow
                          ),
                        ]),
                        child: Container(
                          // alignment: Alignment.centerRight,
                          child: Image.network(
                            "https://pbs.twimg.com/profile_images/1025219653084172288/IB6sMLR__400x400.jpg",
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
=======
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
         decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.repeated,
                    colors: [
                  //     const Color(0xFFF6B2E1),
                  // const Color(0xFF58126A)
                  const Color(0xFF262AAA),
                  const Color(0xFFE65258)
                  
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(child:
              Text("Dhansekar"),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(400),
                      topRight: Radius.circular(400),
                      bottomLeft: Radius.circular(400)),
                  child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          spreadRadius: 65.0, //extend the shadow
                        ),
                      ]),
                      child: Container(
                        // alignment: Alignment.centerRight,
                        child: Image.network(
                          "https://pbs.twimg.com/profile_images/1025219653084172288/IB6sMLR__400x400.jpg",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ),
             
            ),
          ],
>>>>>>> bloc
        ),
      ),
    );
  }
}
