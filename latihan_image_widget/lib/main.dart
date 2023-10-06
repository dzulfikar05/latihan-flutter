import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("latihan image widget"),
            ),
            body: Center(
              child: Container(
                color: Colors.black12,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(5),
                child: Image(
                  // image: NetworkImage(
                  //     "https://img.hargamobil.com/2017/11/02/ZeSVYFzr/toyota-innova-ventur-7bf5.jpg"),
                  image: AssetImage(
                      "images/toyota-innova.jpg"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat,
                ),
              ),
            )));
  }
}
