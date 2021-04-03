import 'package:flutter/material.dart';
import 'package:lost_found_app/landing/landingpage_view.dart';

class LFAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Add Item",
      )),
      body: new Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              color: Colors.grey,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[Icon(Icons.add_circle), Text("Add Photo")],
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: <Widget>[
                  nameAddField(),
                  descField(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>LandingPage()));
        },
        child: Icon(Icons.save),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}

Widget nameAddField() {
  return TextFormField(
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent,
          ),
        ),
        hintText: ('Name Stuff'),
        labelStyle: TextStyle(color: Colors.white)),
  );
}

Widget descField() {
  return TextFormField(
    decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent,
          ),
        ),
        hintText: ('Description'),
        labelStyle: TextStyle(color: Colors.white)),
  );
}
