import 'package:flutter/material.dart';
import 'constants.dart';



class IconContent extends StatelessWidget {
  IconContent({@required this.theIcon, @required this.theText});

  final String theText;
  final IconData theIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          theIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          theText,
          style: kLabelTextStyle
        )
      ],
    );
  }
}