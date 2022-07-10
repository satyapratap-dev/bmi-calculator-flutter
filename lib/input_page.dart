import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'icon_content.dart';

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
  int height = 120;
  int weight = 60;
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
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: cardTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: sliderNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: cardTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newHeight) {
                          setState(() {
                            height = newHeight.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: cardTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: sliderNumberTextStyle,
                        ),
                        Row(
                          children: [
                            RoundCircleButton(
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundCircleButton(
                              icon: Icons.remove,
                            ),
                          ],
                        ),
                      ],
                    ),
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

class RoundCircleButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPress;

  RoundCircleButton({
    @required this.icon,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => {},
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
