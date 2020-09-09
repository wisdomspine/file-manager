import 'package:flutter/material.dart';
import 'package:file_manager/constants.dart';

class AppBarUserAvatar extends StatelessWidget {
  final double indicatorBadgeWidth = 6;
  final Radius containerRadius = Radius.circular(kMinEdgePadding);
  final ImageProvider image;
  AppBarUserAvatar({
    Key key,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(image != null);
    return Container(
      height: kToolbarHeight,
      margin: EdgeInsets.all(kMinEdgePadding),
      decoration: BoxDecoration(
        color: kSecondaryAccentColor,
        borderRadius: BorderRadius.only(
          topLeft: containerRadius,
          bottomLeft: containerRadius,
          bottomRight: containerRadius,
        ),
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image(
              image: image,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            right: -(indicatorBadgeWidth / 4),
            top: -(indicatorBadgeWidth / 4),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(indicatorBadgeWidth),
              ),
              width: indicatorBadgeWidth,
              height: indicatorBadgeWidth,
            ),
          )
        ],
      ),
    );
  }
}
