import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    "Question 1",
    "Question 2",
    "Question 3",
    "Question 4",
    "Question 5",
    "Question 6",
    "Question 7",
    "Question 8",
  ];

  var _questionIndex = 0;

  _buttonPressed() {
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Training"),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]),
            Answer("Answer 1", _buttonPressed),
            Answer("Answer 2", _buttonPressed),
            Answer("Answer 3", _buttonPressed),
          ],
        ),
      ),
    );
  }
}
