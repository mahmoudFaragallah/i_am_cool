import 'package:flutter/material.dart';

void main() {
  runApp((MaterialApp(
      home: Scaffold(
    appBar:
        AppBar(title: Text('I am cool'), backgroundColor: Colors.blueGrey[400]),
    body: Center(
      child: Image(
        image: AssetImage('images/summer-fresh.png'),
      ),
    ),
  ))));
}
