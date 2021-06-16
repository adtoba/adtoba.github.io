import 'package:flutter/material.dart';

class SkillProgress extends CustomPainter {
  SkillProgress({this.color, this.progress});

  final Color color;
  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    Paint progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    Paint greyPaint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    canvas.drawRect(Offset.zero & Size(size.width, size.height), greyPaint);
    canvas.drawRect(
        Offset.zero & Size(progress * (size.width / 100), size.height),
        progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
