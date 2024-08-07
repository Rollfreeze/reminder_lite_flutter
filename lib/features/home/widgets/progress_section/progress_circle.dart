import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/features/home/domain/models/progress_circle_model.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle_painter.dart';

/// A progress circle box that sets restrictions to its painter and draws it.
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
          centerMessage: model.progressMessage,
          curveColor: model.category.color,
          headIcon: model.category.icon,
        ),
      ),
    );
  }
}
