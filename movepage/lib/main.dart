import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      title: "Test Move Page",
      home: Page1(),
    )
  );
}

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Column(
          children: [
            Text("Ini page 1"),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Page2())
                );
              }, 
              child: Text("To page 2 ?")
            )
          ],
        ),
      ),
    );
  }
  
}
class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: Column(
          children: [
            Text("Ini page 2"),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("To page 1 ?")
            )
          ],
        ),
      ),
    );
  }
  
}
