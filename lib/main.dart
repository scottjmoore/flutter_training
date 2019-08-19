import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questions = [
    "Question 1",
    "Question 2",
    "Question 3",
    "Question 4",
    "Question 5",
    "Question 6",
    "Question 7",
    "Question 8",
  ];

  var questionIndex = 0;

  buttonPressed() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
        print(questionIndex);
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
            Text(questions[questionIndex]),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("Button 1"),
                  onPressed: () {
                    print("Button 1 pressed.");
                    buttonPressed();
                  },
                ),
                RaisedButton(
                  child: Text("Button 2"),
                  onPressed: () {
                    print("Button 2 pressed.");
                    buttonPressed();
                  },
                ),
                RaisedButton(
                  child: Text("Button 3"),
                  onPressed: () {
                    print("Button 3 pressed.");
                    buttonPressed();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
