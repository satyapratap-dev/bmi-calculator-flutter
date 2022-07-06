import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';

const bottonButtonHeight = 80.0;
const cardColour = Color(0xFF1e2231);
const bottomButtonColour = Color(0xFFEB1555);

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
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                    childWidget: IconContentWidget(
                      iconText: "MALE",
                      iconData: Icons.male,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                    childWidget: IconContentWidget(
                      iconText: "FEMALE",
                      iconData: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: cardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            color: bottomButtonColour,
            width: double.infinity,
            height: bottonButtonHeight,
          ),
        ],
      ),
    );
  }
}
