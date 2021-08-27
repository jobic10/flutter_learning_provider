import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class RadialProgress extends StatefulWidget {
  final double goalCompleted = 0.7;
  const RadialProgress({Key? key}) : super(key: key);

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomPaint(
              child: Container(
                height: 200,
                width: 200,
              ),
              painter: RadialPainter(progressInDegress: 290),
            ),
          ),
        ],
      ),
    );
  }
}

class RadialPainter extends CustomPainter {
  final double progressInDegress;

  RadialPainter({required this.progressInDegress})
      : assert(progressInDegress >= 0);
  @override
  void paint(Canvas canvas, Size size) {
    var center = Offset(size.width / 2, size.height / 2);
    var paint = Paint()
      ..color = Colors.black12
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;
    canvas.drawCircle(center, size.width / 2, paint);

    var progressPaint = Paint()
      ..shader = LinearGradient(
              colors: [Colors.red, Colors.purple, Colors.purpleAccent])
          .createShader(Rect.fromCenter(
              center: center, width: size.width / 2, height: size.height / 2))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;
    canvas.drawArc(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
        math.radians(-90),
        math.radians(progressInDegress),
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
