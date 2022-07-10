import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? colour;
  final Widget? childWidget;
  final VoidCallback? onPress;
  ReusableCard({@required this.colour, this.childWidget, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: childWidget,
      ),
    );
  }
}
