import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("John Doe"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.all(100),
              decoration: new BoxDecoration(color: Colors.grey),
            )),

            new Container(
              child: TextField(
                  decoration: new InputDecoration(
                    prefixIcon: IconButton(icon: const Icon(Icons.insert_emoticon), onPressed: (){

                    }),
                     suffixIcon: Row (
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         IconButton(icon: const Icon(Icons.attach_file), onPressed: (){

                         }),
                         IconButton(icon: const Icon(Icons.send), onPressed: (){
                           
                         }),
                       ],
                     ),
                      hintText: 'Send a message'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//
// Widget chatField(){
//  return TextFormField (
//    decoration: InputDecoration.collapsed(hintText: "Send a message"),
//  );
// }
