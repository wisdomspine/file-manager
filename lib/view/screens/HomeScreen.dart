import 'package:file_manager/constants.dart';
import 'package:file_manager/view/components/DrawerToggle.dart';
import 'package:file_manager/view/screens/AppDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "Home Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerToggle(),
        actions: [
          AppBarAvatar(),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}

class AppBarAvatar extends StatelessWidget {
  final double indicatorBadgeWidth = 6;
  final Radius containerRadius = Radius.circular(kMinEdgePadding);
  AppBarAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Image.asset(
              "${kUserImagesPath}1.png",
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
