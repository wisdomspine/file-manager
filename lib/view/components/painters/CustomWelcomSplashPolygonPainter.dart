import 'package:file_manager/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class CustomWelcomSplashPolygonPainter extends CustomPainter {
  final List<double> radii = [3, 5, 6];
  final double outerCircles = 7;
  final double rings = 2;
  final double ringDifference = 3;
  final double maxCircleDisplacemt = 5;
  final double padding = 10;
  final double radiiDifference = 35;
  final double brightness;
  final Math.Random _random = Math.Random();
  final List<Color> colors = [
    kAccentColor,
    kSecondaryAccentColor,
    kBackgroundColor
  ];

  CustomWelcomSplashPolygonPainter({this.brightness = 1});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    double cX = size.width / 2;
    double cY = size.width / 2;
    double radius = Math.max(cX, cY) - padding;
    for (int ring = 0; ring < rings; ++ring) {
      double circles = outerCircles - ring * ringDifference;
      radius = radius - ring * radiiDifference;
      for (int circle = 0; circle < circles; ++circle) {
        double circleRadius = radii[_random.nextInt(radii.length)];
        double innerRadius = radius -
            circleRadius +
            _random.nextInt(maxCircleDisplacemt.toInt());
        double angle = (circle + 1) / circles * 360;
        Color color = colors[_random.nextInt(colors.length)];
        paint.color = color;
        canvas.drawCircle(
          getOffset(angle: angle, radius: innerRadius, x: cX, y: cY),
          circleRadius,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomWelcomSplashPolygonPainter oldDelegate) {
    return oldDelegate.brightness != brightness;
  }

  double _degreeToRadians(double degree) => (degree / 180) * Math.pi;

  Offset getOffset(
      {@required double angle, @required double radius, x = 0, y = 0}) {
    return Offset(radius * Math.cos(_degreeToRadians(angle)) + x,
        radius * Math.sin(_degreeToRadians(angle)) + y);
  }
}
