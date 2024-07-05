import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_typo.dart';

class ProgressCirclePainter extends CustomPainter {
  final int done;
  final int total;
  final String? centerMessage;

  const ProgressCirclePainter({
    required this.done,
    required this.total,
    this.centerMessage,
  }) : assert(total >= done, "total can't be less than done");

  static const _outerCircleLineWidth = 35;

  @override
  void paint(Canvas canvas, Size size) {
    final whitePaint = Paint()..color = AppColors.white;
    final grayPaint = Paint()..color = AppColors.gray6;

    final center = Offset(size.width / 2, size.height / 2);
    final innerRadius = size.width / 2 - _outerCircleLineWidth;

    /// Outer circle.
    canvas.drawCircle(center, size.width / 2, grayPaint);

    /// Inner circle.
    canvas.drawCircle(center, innerRadius, whitePaint);

    /// Draws a centred message.
    _maybeDrawText(
      canvas: canvas,
      size: size,
      dx: center.dx,
      dy: center.dy,
      centerMessage: centerMessage,
      innerRadius: innerRadius * 2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

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

class ProgressCircle extends StatelessWidget {
  final int done;
  final int total;
  final String? centerMessage;

  const ProgressCircle({
    super.key,
    required this.done,
    required this.total,
    this.centerMessage,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ProgressCirclePainter(
        done: done,
        total: total,
        centerMessage: centerMessage,
      ),
    );
  }
}
