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
        body: TextFormField(
          // obscureText: true,
          // initialValue: "dodit",
          maxLength: 7,
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25),
              borderSide: new BorderSide()
            ),
            filled: true,
            // fillColor: Colors.blueGrey,
            labelText: "Username",
            hintText: "Masukkan Username Anda",
            helperText: "Masukkan hanya 7 karakter",
            // prefixIcon: Icon(Icons.supervisor_account),
            suffixIcon: Icon(Icons.supervisor_account),
          ),
          validator: (value){
            
          },
        )
      ),
    );
    // throw UnimplementedError();
  }

}