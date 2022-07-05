import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          Text("FlutLab is on your service!"),
          Icon(Icons.mood),
          InkWell(
            child: Center(
              child: Icon(
                Icons.phone,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
