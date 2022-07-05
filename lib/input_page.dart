import 'dart:html';

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void onPressed() {
    print("Pressed button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      // body: Center(
      //   child: Text('Body Text'),
      // ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Icon(
              Icons.ac_unit,
              size: 64,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.ac_unit,
              size: 64,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: onPressed,
                child: Icon(
                  Icons.ac_unit,
                  size: 64,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
