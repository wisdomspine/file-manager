import 'package:file_manager/constants.dart';
import 'package:file_manager/view/components/painters/RoundedTopLeftContainerPainter.dart';
import 'package:flutter/material.dart';

class RoundedTopLeftContainer extends StatelessWidget {
  final Widget child;

  const RoundedTopLeftContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kRoundedTopBottomContainerRadius),
        ),
      ),
      child: CustomPaint(
        child: child,
        painter: RoundedTopLeftContainerPainter(
          paintColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
