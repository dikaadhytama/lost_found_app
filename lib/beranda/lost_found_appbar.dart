import 'package:flutter/material.dart';


    class LFAppBar extends AppBar {

  LFAppBar({TabController controller})
      : super (
    elevation: 0.25,
    backgroundColor: Colors.deepPurpleAccent,
    flexibleSpace: _buildLFAppBar(),
    bottom: TabBar(
      controller: controller,
      tabs: <Widget>[
        Tab(text: "LOST"),
        Tab(text: "FOUND")
      ],
    ),
  );

  static Widget _buildLFAppBar(){

    return new Container(
      child: Row(
        children: <Widget>[
          chatField(),
          textField(),
          searchField(),
          profileField(),
        ],
      ),
      padding: EdgeInsets.all(5)
    );
  }

    }

    Widget chatField(){
    return Container (
       child: IconButton (
          icon: const Icon(Icons.chat_bubble,color: Colors.white,size: 24,),
          onPressed: (){

          },
         alignment: Alignment.centerLeft,
        )
    );
    }

    Widget textField(){
     return Container(
        child: Text(
            "DashBoard", style: TextStyle(color: Colors.white,fontSize: 16),
        ),
       margin: EdgeInsets.fromLTRB(107, 0, 70, 0),
       alignment: Alignment.center,
      );
    }

    Widget searchField(){
      return Container (
        child: IconButton (
          icon: const Icon(Icons.search,color: Colors.white,size: 24,),
          alignment: Alignment.centerRight,
          onPressed: (){

          },
        )
      );
    }

    Widget profileField(){
      return Container (
        child: IconButton (
          icon: const Icon(Icons.person_pin,color: Colors.white,size: 24.0,),
          alignment: Alignment.centerRight,
          onPressed: (){

          },
        ),
      );
    }