import 'package:flutter/material.dart';
import 'package:lost_found_app/auth/signin_view.dart';
import 'package:lost_found_app/landing/landingpage_view.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => new _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new SingleChildScrollView(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              "lf_logo.png",
              width: 89,
              height: 118,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 46, 0, 30),
              child: Text(
                "LOST AND FOUND",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),

            Container(
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            Container(
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.only(top: 0),
              height: 258.0,
              child: ListView(
                children: <Widget>[
                  Column (
                  children: <Widget>[
                    nameField(),
                    nimField(),
                    emailField(),
                    phoneField(),
                    passField(),
                    repassField(),
                  ],
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => LandingPage()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0)),
              padding: EdgeInsets.all(10),

              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 8,
                  minWidth: 155,

                ),
                child: const Text( 'SIGN UP',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 22),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child:  InkWell(
                child: Text(
                    "Have an account ? SignIn",style: TextStyle(color: Colors.white)
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          SignInPage()));
                },
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}

  Widget nameField(){
  return TextFormField(
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,),),
        labelText: "Name ", hintText: ('Enter Name'),
        labelStyle: TextStyle(
            color: Colors.white
        )
    ),
  );
}

  Widget nimField(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,),),
        labelText: "NIM :  ", hintText: ('Enter NIM'),
        labelStyle: TextStyle(
            color: Colors.white
        )
    ),
  );
}

Widget emailField(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,),),
        labelText: "Email :  ", hintText: ('Enter email'),
        labelStyle: TextStyle(
            color: Colors.white
        )
    ),
  );
}

Widget phoneField(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,),),
        labelText: "Phone Number :  ", hintText: ('Enter Phone Number'),
        labelStyle: TextStyle(
            color: Colors.white
        )
    ),
  );
}

Widget passField(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,),),
        labelText: "Password :  ", hintText: ('Enter Password'),
        labelStyle: TextStyle(
            color: Colors.white
        )
    ),
  );
}

Widget repassField(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,),),
        labelText: "Re-Type Password :  ", hintText: ('Enter Re-Type Password'),
        labelStyle: TextStyle(
            color: Colors.white
        )
    ),
  );
}
