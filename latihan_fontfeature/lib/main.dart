import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Font Typography"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Contoh 1",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "Contoh 2 (small caps)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                "Contoh 2/1 (small caps)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')], ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
