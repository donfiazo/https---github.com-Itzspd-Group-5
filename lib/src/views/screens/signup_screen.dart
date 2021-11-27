
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui/src/views/screens/login_screen.dart';



class SignupScreen extends StatefulWidget {
  
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

   final FirebaseAuth _auth = FirebaseAuth.instance;
   final TextEditingController _emailcontroller = TextEditingController();

   final TextEditingController _passwordcontroller = TextEditingController();

//Firebase Auth instance


//keys
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //this will remove that debug banner you use to see.
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        //this gives the app a background color of white.
        //pay attention to the syntax.
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              ListView(
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
                                      'Sign Up',
                                      style: TextStyle(
                                          fontSize: 45, fontWeight: FontWeight.w300),
                                    ),                      
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(14),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(143, 143, 253, 0.3),
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ]
                                    ),



                               /* child: EmailInput(
                                  'Enter Your Email',
                                  Icon(
                                    Icons.person,
                                    color: Color.fromRGBO(143, 143, 243, 1),
                                  ), 
                                ),*/
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(14),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(
                                                    143, 143, 243, 0.4),
                                                offset: Offset(0, 2),
                                                blurRadius: 10.0),
                                          ]),
                                      
                                      child: TextFormField(
                                        controller: _emailcontroller,
                                        decoration: InputDecoration(
                                          hintText: 'Enter Email',
                                          border: InputBorder.none,
                                         // prefixIcon: Icon,
                                          // labelText: text,
                                          labelStyle: TextStyle(
                                              fontSize: 20, color: Colors.grey, 
                                              fontWeight: FontWeight.w300),
                                        ),
                                        cursorHeight: 30,
                                        cursorColor: Color.fromRGBO(143, 143, 243, 1),
                                  
                                      ),
                                    ),
                                  ],
                               ),
                              ), 

                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(14),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(
                                                    143, 143, 243, 0.4),
                                                offset: Offset(0, 2),
                                                blurRadius: 10.0),
                                          ]),
                                      
                                      child: TextFormField(
                                        controller: _passwordcontroller,
                                        decoration: InputDecoration(
                                          hintText: 'Enter Password',
                                          border: InputBorder.none,
                                         // prefixIcon: Icon,
                                          // labelText: text,
                                          labelStyle: TextStyle(
                                              fontSize: 20, color: Colors.grey, 
                                              fontWeight: FontWeight.w300),
                                        ),
                                        cursorHeight: 30,
                                        cursorColor: Color.fromRGBO(143, 143, 243, 1),
                                  
                                      ),
                                    ),
                                  ],
                               ),
                              ), 
                          
                                    /*    Icon(
                                          Icons.lock,
                                          color: Color.fromRGBO(143, 143, 243, 1),
                                        ), */
                                    ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '',
                                      style: TextStyle(
                                          color: Color.fromRGBO(143, 143, 243, 1),
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              RaisedButton(
                                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                                color: Color.fromRGBO(143, 143, 243, 5),
                                child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w300),
                                  ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()){
                                    await  _auth.createUserWithEmailAndPassword(
                                      email: _emailcontroller.text, 
                                      password: _passwordcontroller.text);
                                     Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context)=>LoginScreen()
                                    ));
                                  } else {
                                    showDialog(
                                    context: context, 
                                    builder: (context)=> Text ("Please enter Correct Details"),);
                                  }
                                                                  
                                }
                                
                                ),
                           /*   SizedBox(
                                height: 35,
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(143, 143, 243, 5),
                                      Color.fromRGBO(143, 143, 243, 2),
                                    ])),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ), */
                              /*Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't have an account?",
                                        style: TextStyle(fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        'Sign up',
                                        style: TextStyle(
                                            color: Color.fromRGBO(143, 143, 243, 1),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              )*/
                            ],
                          ),
                        ),
                      ],
                    ),
               ],
              ),
            ),
        ),
      );
  }
}