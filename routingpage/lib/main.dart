import 'package:flutter/material.dart';

void main() {
  runApp( MainRouting());
}

class MainRouting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        initialRoute: "/home",
        title: "Home",
        routes: {
          "/home" : (context) => Home(),
          "/login" : (context) => Login(),
          "/setting" : (context) => Setting(),
        },
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
          children: [
            Text("ini halaman Home"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/login");
              }, 
              child: Text("LOGIN")
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/setting");
              }, 
              child: Text("To Setting")
            )
          ],
        ),
      )
    );
  }
}

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: [
            Text("ini halaman Login"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/home");
              }, 
              child: Text("Back Home")
            )
          ],
        ),
      )
    );
  }
}

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        body: Column(
          children: [
            Text("ini halaman Setting"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/home");
              }, 
              child: Text("Back Home")
            )
          ],
        ),
      )
    );
  }
}