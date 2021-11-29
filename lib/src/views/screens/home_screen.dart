import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        //this gives the app a background color of white.
        //pay attention to the syntax.
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text ("Home Screen"),
        ),
        body: Text("Group 5 Home")
     );                   
  }
}