import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Training"),
        ),
        body: Column(
          children: <Widget>[
            Text("Hello"),
            Text("World!"),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("Button 1"),
                  onPressed: () {
                    print("Button 1 pressed.");
                  },
                ),
                RaisedButton(
                  child: Text("Button 2"),
                  onPressed: () {
                    print("Button 2 pressed.");
                  },
                ),
                RaisedButton(
                  child: Text("Button 3"),
                  onPressed: () {
                    print("Button 3 pressed.");
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
