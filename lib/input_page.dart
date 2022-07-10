import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';

const bottonButtonHeight = 80.0;
const activeCardColour = Color(0xFF1e2231);
const inActiveCardColour = Color(0xFF111328);
const bottomButtonColour = Color(0xFFEB1555);

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
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
                    colour: selectedGender == Gender.Male ? activeCardColour : inActiveCardColour,
                    childWidget: IconContentWidget(
                      iconText: "MALE",
                      iconData: Icons.male,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.Female ? activeCardColour : inActiveCardColour,
                    childWidget: IconContentWidget(
                      iconText: "FEMALE",
                      iconData: Icons.female,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
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
