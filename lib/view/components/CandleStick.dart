import 'package:flutter/material.dart';

class CandleStick extends StatelessWidget {
  final double radius;
  final double height;
  final Color color;
  final double thickness;
  const CandleStick({
    Key key,
    this.radius = 3,
    this.height = double.infinity,
    this.color,
    this.thickness = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: thickness,
          color: color ?? Theme.of(context).accentColor,
        ),
        CircleAvatar(
          radius: radius,
          backgroundColor: color ?? Theme.of(context).accentColor,
        )
      ],
    );
  }
}
