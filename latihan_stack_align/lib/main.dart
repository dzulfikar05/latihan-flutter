import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack Align"),
        ),
        body: Stack(
          children: <Widget>[
            // bg
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.lightBlueAccent,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.lightBlueAccent,
                          )),
                    ],
                  ),
                )
              ],
            ),
            // text
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.amber,
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // button
            Align(
                alignment: Alignment(0,0.8),
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Click Me !")))
          ],
        ),
      ),
    );
  }
}
