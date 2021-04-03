import 'package:flutter/material.dart';
import 'package:lost_found_app/chat/chatting.dart';
import 'package:lost_found_app/landing/landingpage_view.dart';

class FoundItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Container(
      height: 600,
      child: Card(
        semanticContainer: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.fromLTRB(20, 85, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Laptop bag found near R.4.1.12",
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset("pict.png"),
            ListTile(
              subtitle: Text("with charger, paper, etc"),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChattingPage()));
                      },
                      child: Text("CHAT"),
                      color: Colors.deepPurpleAccent,
                      textColor: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandingPage()));
                      },
                      child: Text("CANCEL"),
                      textColor: Colors.deepPurpleAccent,
                    )
                  ]),
            )
          ],
        ),
      ),
//
    ));
  }
}
