import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// A circle with reminder progress category for [ProgressSection].
class ProgressCircleSection extends StatelessWidget {
  /// Completed category reminders.
  final int completed;

  /// Total category reminders.
  final int total;

  const ProgressCircleSection({
    super.key,
    required this.completed,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius15,
          boxShadow: AppShadows.defaultShadow,
          color: AppColors.white,
        ),
        child: Center(
          child: SizedBox.square(
            dimension: 218,
            child: ProgressCircle(
              completed: completed,
              total: total,
              curveColor: AppColors.red,
              centerMessage:
                  '${LocalizationService.locale.completed}:\n$completed ${LocalizationService.locale.from} $total',
            ),
          ),
        ),
      ),
    );
  }
}
