import 'package:flutter/material.dart';

class AnalyzeButton extends StatelessWidget {
  const AnalyzeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 30.0,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).backgroundColor.withOpacity(.7),
              blurRadius: 0,
              spreadRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Text(
          "Analyze",
          style: Theme.of(context).primaryTextTheme.bodyText2,
        ),
      ),
    );
  }
}
