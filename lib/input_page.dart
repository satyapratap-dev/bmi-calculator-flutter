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
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              // color: const Color(0xF1D1E33),
              color: Colors.red,
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              // color: const Color(0xF1D1E33),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

// Expanded(
//                 child: Container(
//                   margin: EdgeInsets.all(15.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     // color: const Color(0xF1D1E33),
//                     color: Colors.red,
//                   ),
//                 ),
//               ),
