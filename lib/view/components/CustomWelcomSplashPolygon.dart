import 'dart:math' as Math;

import 'package:file_manager/view/components/painters/CustomWelcomSplashPolygonPainter.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:file_manager/constants.dart';

class CustomWelcomSplashPolygon extends StatelessWidget {
  const CustomWelcomSplashPolygon({
    Key key,
  }) : super(key: key);

  final double radius = 30;
  final double rotate = -40;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 2 * kEdgePadding;
    width = Math.max(width, 200);
    width = Math.min(width, 300);
    return ClipPolygon(
      child: Container(
        padding: EdgeInsets.all(13.0),
        height: width,
        width: width,
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.15),
        ),
        foregroundDecoration: BoxDecoration(
          color: Colors.red.withOpacity(0.04),
        ),
        child: ClipPolygon(
          borderRadius: 30.0,
          rotate: (rotate + 10.0),
          child: Container(
            color: kWelcomeSplashPolygonColor,
            padding: EdgeInsets.all(10.0),
            child: ClipPolygon(
              rotate: 45,
              borderRadius: 30.0,
              sides: 6,
              boxShadows: [
                PolygonBoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  elevation: 3,
                ),
              ],
              child: Container(
                child: CustomPaint(
                  painter: CustomWelcomSplashPolygonPainter(),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "File",
                              style: Theme.of(context)
                                  .accentTextTheme
                                  .headline1
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      textBaseline: TextBaseline.alphabetic),
                            ),
                            IconTheme(
                              child: Icon(Icons.folder),
                              data: Theme.of(context)
                                  .primaryIconTheme
                                  .copyWith(size: 55.0),
                            ),
                          ],
                        ),
                        Text(
                          "Manager",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .headline1
                              .copyWith(
                                fontWeight: FontWeight.normal,
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          sides: 6,
        ),
      ),
      sides: 6,
      rotate: rotate,
      borderRadius: 30.0,
    );
  }
}
