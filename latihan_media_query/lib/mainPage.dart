import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan Media Query'),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers,
              )
            : Row(
                children: generateContainers,
              ));
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        color: Colors.black12,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.black26,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.black38,
        width: 100,
        height: 100,
      ),
    ];
  }
}
