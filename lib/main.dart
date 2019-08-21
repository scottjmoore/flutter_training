import 'package:flutter/material.dart';

import './question.dart';

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
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text("Button 1"),
                    onPressed: () {
                      print("Button 1 pressed.");
                      _buttonPressed();
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text("Button 2"),
                    onPressed: () {
                      print("Button 2 pressed.");
                      _buttonPressed();
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text("Button 3"),
                    onPressed: () {
                      print("Button 3 pressed.");
                      _buttonPressed();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
