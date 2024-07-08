import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/features/home/domain/models/progress_circle_model.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle_painter.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle_section.dart';

/// A progress circle for [ProgressCircleSection].
class ProgressCircle extends StatelessWidget {
  /// A model with information about its category progress.
  final ProgressCircleModel model;

  const ProgressCircle({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: const Size.square(218),
        painter: ProgressCirclePainter(
          total: model.total,
          completed: model.completed,
          curveColor: model.curveColor,
          centerMessage: model.progressMessage,
          headIcon: model.headIcon,
        ),
      ),
    );
  }
}
