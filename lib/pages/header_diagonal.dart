import 'package:flutter/material.dart';

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPaintDiagonal(),
      ),
    ));
  }
}

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green[200]
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    final path = Path();
    path.lineTo(0, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

    final paintCircle = Paint()
      ..color = Colors.red[300]
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    Offset center = Offset(size.width / 2, size.height * 0.35);

    canvas.drawCircle(center, 50, paintCircle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
