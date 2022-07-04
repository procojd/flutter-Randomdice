import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnumber = 1;
   int rightnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftnumber = Random().nextInt(6) + 1;
                  rightnumber = Random().nextInt(6) + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$leftnumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
               onPressed: () {
                setState(() {
                  leftnumber = Random().nextInt(6) + 1;
                  rightnumber = Random().nextInt(6) + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$rightnumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
