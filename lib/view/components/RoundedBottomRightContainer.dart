import 'package:file_manager/constants.dart';
import 'package:flutter/material.dart';

class RoundedBottomRightContainer extends StatelessWidget {
  final Widget child;

  const RoundedBottomRightContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
      margin: EdgeInsets.only(bottom: 0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(kRoundedTopBottomContainerRadius),
          ),
        ),
        child: child,
      ),
    );
  }
}
