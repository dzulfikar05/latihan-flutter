import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Teks";
  // void onClick() {
  //   setState(() {
  //     message = "Button has been clicked woy";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonimous Methhod"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "Button has been clicked ";
                    });
                  },
                  child: Text("Click Me")),
            ],
          ),
        ),
      ),
    );
  }
}
