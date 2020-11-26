import 'dart:math';

import 'package:flutter/material.dart';

class MyRandomShapeWidget extends StatelessWidget {
  final Widget child;

  const MyRandomShapeWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.infinite,
      willChange: false,
      painter: ShapePainter(),
      child: child,
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromCenter(
          center: Offset(
            size.width / 2,
            size.height / 2,
          ),
          height: size.height,
          width: size.width,
        ),
        paint);
    paint
      ..color =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    canvas.drawCircle(
        Offset(
          size.width * Random().nextDouble(),
          size.height * Random().nextDouble(),
        ),
        size.width / Random().nextInt(4),
        paint);
    paint
      ..color =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    canvas.drawCircle(
        Offset(
          size.width * Random().nextDouble(),
          size.height * Random().nextDouble(),
        ),
        size.width / Random().nextInt(4),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
