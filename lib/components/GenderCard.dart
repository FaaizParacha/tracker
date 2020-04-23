import 'package:flutter/material.dart';
import '../constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({this.icon, this.label});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 20.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
