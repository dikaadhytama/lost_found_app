import 'package:flutter/material.dart';
import 'package:lost_found_app/launcher/launcher_view.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lost & Found',
      theme: new ThemeData(
      fontFamily: 'Roboto',
        primaryColor: Colors.deepPurpleAccent,
        accentColor: Colors.deepPurple
      ),
      home: new LauncherPage(),
    );
  }
}