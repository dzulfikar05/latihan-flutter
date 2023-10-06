import 'package:flutter/material.dart';

main ()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Mobile")),
        body: Column(
          children: [
            Text("Form Login"),

            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Silahkan Masukkan Username"
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Silahkan Masukkan Password"
                ),
              ),
            ),
            
            ElevatedButton(
              onPressed: (){
                print("Login");
              }, 
              child: Text("LOGIN")
            )

          ],
        ),
      ),
    );
    // throw UnimplementedError();
  }

}