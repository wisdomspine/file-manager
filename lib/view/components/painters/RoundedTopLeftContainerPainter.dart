import 'package:flutter/material.dart';
import 'package:file_manager/constants.dart';

class RoundedTopLeftContainerPainter extends CustomPainter {
  final double radius;
  final Color paintColor;

  RoundedTopLeftContainerPainter({
    this.radius = kRoundedTopBottomContainerRadius,
    this.paintColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);
    path.lineTo(0, 0);
    path.close();

    Paint paint = Paint()
      ..strokeWidth = 0
      ..style = PaintingStyle.fill
      ..color = paintColor;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
