import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle.dart';

/// A model for [ProgressCircle] widget.
class ProgressCircleModel {
  /// Total category reminders.
  final int total;

  /// Completed category reminders.
  final int completed;

  /// A chosen reminder category to show.
  final ReminderCategory category;

  /// The head's icon.
  final IconData headIcon;

  const ProgressCircleModel({
    required this.total,
    required this.completed,
    required this.category,
    required this.headIcon,
  });

  /// Get the message about how many reminders are completed currently.
  String get progressMessage => LocalizationService.locale.completeAmount(completed, total);

  /// Get the curve color based on its reminder category.
  Color get curveColor => switch (category) {
        TodayCategory() => AppColors.blue,
        ForMonthCategory() => AppColors.red,
        AllCategory() => AppColors.black,
      };
}
