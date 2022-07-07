import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';

const bottonButtonHeight = 80.0;
const activeCardColour = Color(0xFF1e2231);
const inActiveCardColour = Color(0xFF111328);
const bottomButtonColour = Color(0xFFEB1555);
Color femaleCardColour = inActiveCardColour;
Color maleCardColour = inActiveCardColour;

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.Male) {
      if (maleCardColour == inActiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inActiveCardColour;
      } else
        maleCardColour = inActiveCardColour;
    }
    if (selectedGender == Gender.Female) {
      if (femaleCardColour == inActiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inActiveCardColour;
      } else
        femaleCardColour = inActiveCardColour;
    }
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.Male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      childWidget: IconContentWidget(
                        iconText: "MALE",
                        iconData: Icons.male,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.Female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      childWidget: IconContentWidget(
                        iconText: "FEMALE",
                        iconData: Icons.female,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
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
