import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lost_found_app/auth/signin_view.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override

  void initState(){
    super.initState();
    startLaunching();
  }
  startLaunching()async{
    var duration = const Duration(seconds: 1);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new SignInPage();
      }));
    } );
    }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:  new Image.asset(
                "lf_logo.png",
                width: 121,
                height: 160,
                color: Colors.white,
              ),


            ),
            Container(
              child: Text(
                "LOST AND FOUND",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 311),
            )


          ],
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
