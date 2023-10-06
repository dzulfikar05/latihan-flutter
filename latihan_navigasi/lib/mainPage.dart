import 'package:flutter/material.dart';
import 'package:latihan_navigasi/secondPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to second Page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}
