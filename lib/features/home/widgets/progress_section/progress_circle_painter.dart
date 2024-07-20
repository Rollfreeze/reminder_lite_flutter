import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_typo.dart';

/// A Painter for drawing a circle with progress.
class ProgressCirclePainter extends CustomPainter {
  /// Total category reminders.
  final int total;

  /// Completed category reminders.
  final int completed;

  /// A color of the progress curve.
  final Color curveColor;

  /// An optional message on the center.
  final String? centerMessage;

  /// The outer circle line width.
  final int outerCircleLineWidth;

  /// The head's icon.
  final IconData headIcon;

  /// The head icon size.
  final double headIconSize;

  const ProgressCirclePainter({
    required this.total,
    required this.completed,
    required this.curveColor,
    this.centerMessage,
    required this.headIcon,
    this.headIconSize = 15.0,
    this.outerCircleLineWidth = 35,
  })  : assert(total >= completed, "Total can't be less than completed"),
        assert(completed >= 0, "Completed can't be less than 0"),
        assert(total >= 0, "Total can't be less than 0");

  @override
  void paint(Canvas canvas, Size size) {
    assert(size.height == size.width, "A parent box must be square");

    final whitePaint = Paint()..color = AppColors.white;
    final grayPaint = Paint()..color = AppColors.gray6;

    final outerCircleRadius = size.width / 2;
    final innerCircleRadius = outerCircleRadius - outerCircleLineWidth;

    final center = Offset(outerCircleRadius, outerCircleRadius);

    /// Outer circle.
    canvas.drawCircle(
      center,
      outerCircleRadius,
      grayPaint,
    );

    /// Progress curve.
    _drawProgressCurve(
      canvas: canvas,
      size: size,
      center: center,
    );

    /// Inner circle.
    canvas.drawCircle(
      center,
      innerCircleRadius,
      whitePaint,
    );

    /// Draws a centred message.
    _maybeDrawText(
      canvas: canvas,
      size: size,
      dx: center.dx,
      dy: center.dy,
      centerMessage: centerMessage,
      innerRadius: innerCircleRadius * 2,
    );

    /// Draws a progress curve rounded head.
    _drawProgressHead(
      canvas: canvas,
      size: size,
      center: center,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  double get _progressSweepAngle {
    const oneDegree = pi / 180;
    final completedPercent = completed * 100 / total;
    final progressCurvePercent = 360 * completedPercent / 100;
    final sweepAngle = oneDegree * progressCurvePercent;
    return sweepAngle;
  }

  void _drawProgressCurve({
    required Canvas canvas,
    required Size size,
    required Offset center,
  }) {
    const startAngle = 3 * pi / 2;
    final curvePaint = Paint()..color = curveColor;

    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: size.width / 2,
      ),
      startAngle,
      _progressSweepAngle,
      true,
      curvePaint,
    );
  }

  void _rotateProgressClockwise({
    required Canvas canvas,
  }) {
    canvas.rotate(-pi / 2);
    canvas.rotate(_progressSweepAngle);
  }

  void _rotateProgressCounterclockwise({
    required Canvas canvas,
  }) {
    canvas.rotate(-_progressSweepAngle);
    canvas.rotate(pi / 2);
  }

  void _drawProgressHead({
    required Canvas canvas,
    required Size size,
    required Offset center,
  }) {
    if (completed <= 0) return;
    final headRadius = outerCircleLineWidth / 2;
    final headPaint = Paint()..color = curveColor;

    final headPoint = Offset(size.width / 2 - headRadius, 0);

    canvas.translate(center.dx, center.dy);
    _rotateProgressClockwise(canvas: canvas);

    canvas.drawCircle(
      headPoint,
      headRadius,
      headPaint,
    );

    _drawProgressHeadIcon(
      headPoint: headPoint,
      canvas: canvas,
    );
  }

  void _drawProgressHeadIcon({
    required Offset headPoint,
    required Canvas canvas,
  }) {
    canvas.translate(headPoint.dx, headPoint.dy);
    _rotateProgressCounterclockwise(canvas: canvas);

    final iconOffset = -headIconSize / 2;
    final pictureRecorder = PictureRecorder();
    final iconCanvas = Canvas(pictureRecorder);

    final iconPainter = TextPainter(
      textDirection: TextDirection.ltr,
    );

    iconPainter.text = TextSpan(
      text: String.fromCharCode(headIcon.codePoint),
      style: TextStyle(
        fontFamily: headIcon.fontFamily,
        package: headIcon.fontPackage,
        fontSize: headIconSize,
        color: AppColors.white,
      ),
    );

    iconPainter.layout();
    iconPainter.paint(
      iconCanvas,
      Offset(iconOffset, iconOffset),
    );

    final picture = pictureRecorder.endRecording();
    canvas.drawPicture(picture);
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
