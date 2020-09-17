import 'package:flutter/material.dart';

class CustomChipListItem extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle textStyle;
  final double radius = 10.0;
  const CustomChipListItem({
    Key key,
    @required this.text,
    this.color = Colors.white,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: radius,
          height: radius,
          child: CircleAvatar(
            backgroundColor: color,
          ),
        ),
        SizedBox(
          width: radius * 0.8,
        ),
        Text(text, style: textStyle),
      ],
    );
  }
}
