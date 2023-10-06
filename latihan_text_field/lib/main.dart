import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "Nilai awal");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan TextField"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              // obscureText: true,
              // maxLength: 50,
              // maxLines: 3,
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                icon: Icon(Icons.adb),
                suffix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.red,

                ),
                prefixIcon: Icon(Icons.person),
                prefixText: "Username : ",
                prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                labelText: "Username",
                hintText: "Masukkan Username",
                hintStyle: TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                )
              ),
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text("Data: ${controller.text}")
          ],
        ),
      ),
    ));
  }
}
