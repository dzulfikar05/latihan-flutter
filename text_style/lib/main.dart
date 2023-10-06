import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Style'),
        ),
        body: Center(
          child: Text(
            "Hello Flutter",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 24,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
                decorationColor: Colors.blueGrey,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy
              ),
          ),
        ),
      ),
    );
  }
}
