import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle_painter.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle_section.dart';

/// A progress circle for [ProgressCircleSection].
class ProgressCircle extends StatelessWidget {
  final int completed;
  final int total;
  final Color curveColor;
  final String? centerMessage;

  const ProgressCircle({
    super.key,
    required this.completed,
    required this.total,
    required this.curveColor,
    this.centerMessage,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ProgressCirclePainter(
        completed: completed,
        total: total,
        centerMessage: centerMessage,
        curveColor: curveColor,
      ),
    );
  }
}
