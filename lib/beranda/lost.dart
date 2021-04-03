import 'package:flutter/material.dart';
import 'package:lost_found_app/beranda/found_item.dart';

class LostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      semanticContainer: true,
      margin: EdgeInsets.all(10),
      child: new Column(
        children: <Widget>[
          new Image.asset(
            "pict.png",
            height: 68,
            width: 665,
            fit: BoxFit.cover,
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Username'),
            trailing: Text('1hr ago'),
          ),
          const ListTile(
            title: Text('Laptop bag found near R.4.1.12'),
            subtitle: Text('with charger,paper,etc'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(
                  "FOUND",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FoundItemPage()));

                },
              )
            ],
          )
        ],
      ),
    );
  }
}