import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_typo.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle.dart';

/// A custom painter circle for [ProgressCircle].
class ProgressCirclePainter extends CustomPainter {
  final int done;
  final int total;
  final Color curveColor;
  final String? centerMessage;

  const ProgressCirclePainter({
    required this.done,
    required this.total,
    required this.curveColor,
    this.centerMessage,
  }) : assert(total >= done, "Total can't be less than done");

  static const _outerCircleLineWidth = 35;

  @override
  void paint(Canvas canvas, Size size) {
    assert(size.height == size.width, "A parent box must be square");

    final whitePaint = Paint()..color = AppColors.white;
    final grayPaint = Paint()..color = AppColors.gray6;

    final outerCircleRadius = size.width / 2;
    final innerCircleRadius = outerCircleRadius - _outerCircleLineWidth;

    final center = Offset(outerCircleRadius, outerCircleRadius);

    /// Outer circle.
    canvas.drawCircle(center, outerCircleRadius, grayPaint);

    /// Progress curve.
    _drawProgressCurve(
      canvas: canvas,
      size: size,
      center: center,
      curveColor: curveColor,
    );

    /// Inner circle.
    canvas.drawCircle(center, innerCircleRadius, whitePaint);

    /// Draws a centred message.
    _maybeDrawText(
      canvas: canvas,
      size: size,
      dx: center.dx,
      dy: center.dy,
      centerMessage: centerMessage,
      innerRadius: innerCircleRadius * 2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void _drawProgressCurve({
    required Canvas canvas,
    required Size size,
    required Color curveColor,
    required Offset center,
  }) {
    const degrees90 = 3 * pi / 2;
    const degrees1 = pi / 180;
    final curvePaint = Paint()..color = curveColor;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      degrees90,
      degrees1 * 270,
      true,
      curvePaint,
    );
  }

  void _maybeDrawText({
    required Canvas canvas,
    required Size size,
    required double dx,
    required double dy,
    required String? centerMessage,
    required double innerRadius,
  }) {
    if (centerMessage == null) return;

    final textSpan = TextSpan(
      text: centerMessage,
      style: AppTypo.medium17,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(maxWidth: innerRadius);

    final textPoint = Offset(
      dx - textPainter.size.width / 2,
      dy - textPainter.size.height / 2,
    );

    textPainter.paint(canvas, textPoint);
  }
}
