import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade300),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState() => Card();
}

class Card extends State<Home>{
  int angka = 0;
  
  void upAngka(){
    setState(() {
      angka++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home stateful"),
      ),
      body: Column(
        children: [
          Text("Angka nya adalah"),
          Text("$angka"),
          ElevatedButton(
            onPressed:upAngka, 
            child: Text("Tambah")
          )
        ],
      ),
    );
  }

}
