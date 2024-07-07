import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// A circle with reminder progress category for [ProgressSection].
class ProgressCircleSection extends StatelessWidget {
  /// Completed category reminders.
  final int completed;

  /// Total category reminders.
  final int total;

  /// A chosen reminder category to show.
  final ReminderCategory selectedCategory;

  const ProgressCircleSection({
    super.key,
    required this.completed,
    required this.total,
    required this.selectedCategory,
  });

  /// Get the curve color based on its reminder category.
  Color get _curveColor => switch (selectedCategory) {
        TodayCategory() => AppColors.blue,
        ForMonthCategory() => AppColors.red,
        AllCategory() => AppColors.black,
      };

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
              curveColor: _curveColor,
              centerMessage:
                  '${LocalizationService.locale.completed}:\n$completed ${LocalizationService.locale.from} $total',
            ),
          ),
        ),
      ),
    );
  }
}
