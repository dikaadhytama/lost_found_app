import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_found_app/auth/signup_view.dart';
import 'package:lost_found_app/landing/landingpage_view.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => new _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
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
                    "SIGN IN",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
            ),

            Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: <Widget>[
                  emailField(),
                  passField(),
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
                  child: const Text( 'SIGN IN',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 22),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
                child:  InkWell(
                    child: Text(
                        "Don't have an account ? SignUp",style: TextStyle(color: Colors.white)
                    ),
                  onTap: () {
                    Navigator.push(context,
                         MaterialPageRoute(builder: (context) =>
                          SignUpPage()));
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

Widget emailField(){
  return TextFormField(
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,),),
        labelText: "Email/Phone No. ", hintText: ('Enter Email/Phone No.'),
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
