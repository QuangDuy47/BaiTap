import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Stack Layout'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
