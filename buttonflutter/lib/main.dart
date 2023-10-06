import 'package:flutter/material.dart';

main ()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Mobile")
        ),
        body: ElevatedButton.icon(
            onPressed: (){
              print("halo");
            }, 
            icon: Icon(Icons.add_a_photo), 
            label: Text("Ambil Foto"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
            ),
          )
      ),
    );
    // throw UnimplementedError();
  }

}