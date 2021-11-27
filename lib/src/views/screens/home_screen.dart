import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //this will remove that debug banner you use to see.
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //this gives the app a background color of white.
        //pay attention to the syntax.
        backgroundColor: Colors.white,
        body: Form(
            child: ListView(
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('Image/pic4.png'),
                              fit: BoxFit.fill)),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 290,
                            height: 80,
                            width: 100,
                            child: Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.more_vert_sharp,
                                  size: 35,
                                  color: Color.fromRGBO(143, 143, 243, 1),
                                ),
                                onPressed: null,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('Image/pic8.png'))),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Center(
                                child: Text(
                                  'Group 4 Home',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w300),
                                ),                      
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
        ),
      ),
    ),
    );                   
  }
}