import 'package:flutter/material.dart';

const iconContentText = Color(0xFF8D8E98);

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
