import 'package:flutter/material.dart';

class ReusableButton1 extends StatelessWidget {
  ReusableButton1({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        width: 135,
        height: 30,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
