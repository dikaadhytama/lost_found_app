import 'package:flutter/material.dart';
import 'package:lost_found_app/add_item/add_item.dart';
import 'package:lost_found_app/beranda/lost.dart';
import 'package:lost_found_app/beranda/found.dart';
import 'package:lost_found_app/beranda/lost_found_appbar.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with SingleTickerProviderStateMixin {

   TabController controller;
   List found = new List.generate(20, (i)=>new FoundPage()).toList();
   List lost = new List.generate(20, (i)=>new LostPage()).toList();

  @override
  void initState(){
    super.initState();
    controller = TabController(vsync: this,length: 2);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SafeArea (
        child: Scaffold(
          appBar: new LFAppBar(controller: controller),

          body: TabBarView(
            controller: controller,
            children: <Widget>[
              new ListView(children: lost,),
              new ListView(children: found,)
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LFAddPage()));
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.deepPurpleAccent,
          ),
        )
    );

  }
}
