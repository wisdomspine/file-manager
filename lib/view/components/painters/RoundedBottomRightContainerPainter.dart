import 'package:flutter/material.dart';
import 'package:file_manager/constants.dart';

class RoundedBottomRightContainerPainter extends CustomPainter {
  final double radius;
  final Color paintColor;

  RoundedBottomRightContainerPainter({
    this.radius = kRoundedTopBottomContainerRadius,
    this.paintColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width - radius, size.height);
    path.quadraticBezierTo(
      size.width - radius * kRoundedTopBottomContainerRadiusControlFraction,
      size.height - radius * kRoundedTopBottomContainerRadiusControlFraction,
      size.width,
      size.height - radius,
    );
    path.lineTo(size.width, size.height);
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
