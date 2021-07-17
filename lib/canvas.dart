
import 'package:flutter/material.dart';

void main() {
  runApp(Paper());
}

class Paper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(painter: PaperPainter()),
    );
  }
}

class PaperPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..color = Colors.blue;

    double step = 10;

    canvas.translate(size.width/2, size.height/2);
    canvas.save();
    for (int i = 0; i < size.height / 2 / step; i++) {
      canvas.drawLine(Offset.zero, Offset(size.width / 2, 0), paint);
      canvas.translate(0, step);
    }
    canvas.restore();

    canvas.save();
    for (int i = 0; i < size.width / 2 / step; i++) {
      canvas.drawLine(Offset.zero, Offset(0, size.height / 2), paint);
      canvas.translate(step, 0);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
