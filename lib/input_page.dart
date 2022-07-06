import 'package:flutter/material.dart';

const bottonButtonHeight = 80.0;
const cardColour = Color(0xFF1e2231);
const bottomButtonColour = Color(0xFFEB1555);
const iconContentText = Color(0xFF8D8E98);

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

class ReusableCard extends StatelessWidget {
  final Color? colour;
  final Widget? childWidget;
  ReusableCard({@required this.colour, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      child: childWidget,
    );
  }
}

class IconContentWidget extends StatelessWidget {
  final String? iconText;
  final IconData? iconData;

  IconContentWidget({
    @required this.iconText,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText ?? "",
          style: TextStyle(
            fontSize: 18.0,
            color: iconContentText,
          ),
        ),
      ],
    );
  }
}
