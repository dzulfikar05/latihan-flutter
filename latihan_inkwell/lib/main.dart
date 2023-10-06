import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("InkWell"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, shape: StadiumBorder()),
                  onPressed: () {},
                  child: Text("Click Me"),
                ),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purpleAccent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {},
                        child: Center(
                            child: Text(
                          "Click me",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
