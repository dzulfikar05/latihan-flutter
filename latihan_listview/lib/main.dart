import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listview"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text("Data ke" + counter.toString()));
                        counter++;
                      });
                    },
                    child: Text("Tambah Data")),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  }, 
                  child: Text("Kurang Data"))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
