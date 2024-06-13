import 'package:flutter/material.dart';
import 'dart:math';

class CircularLoader extends StatefulWidget {
  @override
  _CircularLoaderState createState() => _CircularLoaderState();
}

class _CircularLoaderState extends State<CircularLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: SnakeLoaderPainter(progress: _controller.value),
            size: Size(30.0, 30.0),
          );
        },
      ),
    );
  }
}

class SnakeLoaderPainter extends CustomPainter {
  final double progress;

  SnakeLoaderPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0;

    final double radius = size.width / 3;
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double startAngle = -pi / 2;
    final double sweepAngle = 2 * pi * progress;

    // Create a gradient that fades from black to transparent
    final Gradient gradient = SweepGradient(
      startAngle: startAngle,
      endAngle: startAngle + 2 * pi,
      colors: [
        Colors.black,
        Colors.black.withOpacity(.6),
        Colors.black.withOpacity(.3)
      ],
      stops: [0.0, 0.0, 0.0],
    );

    // Apply the gradient to the paint
    paint.shader = gradient.createShader(
      Rect.fromCircle(center: center, radius: radius),
    );

    // Define the trailing length
    final double trailingLength =
        pi * 1.5; // Increase this value for a longer trailing effect

    // Draw the gradient arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle + sweepAngle - trailingLength,
      trailingLength,
      false,
      paint,
    );

    // Draw the head with solid black color
    paint.shader = null;
    paint.color = Colors.black;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle + sweepAngle,
      0.1, // Length of the head
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
