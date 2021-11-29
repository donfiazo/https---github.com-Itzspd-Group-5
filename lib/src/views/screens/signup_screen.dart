
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
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("SignUp Screen"),
        ),
        //this gives the app a background color of white.
        //pay attention to the syntax.
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Column(
            children: [        
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
                            ],
                          ),
                        ),            
      );
  }
}