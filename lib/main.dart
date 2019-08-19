import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String text = "Hello World!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
