import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/models/reminder_categories.dart';

/// A model of ProgressCircle widget.
class ProgressCircleModel {
  /// Total category reminders.
  final int total;

  /// Completed category reminders.
  final int completed;

  /// A chosen reminder category to show.
  final ReminderCategory category;

  const ProgressCircleModel({
    required this.total,
    required this.completed,
    required this.category,
  });

  /// Get the message about how many reminders are completed currently.
  String get progressMessage => LocalizationService.locale.completeAmount(completed, total);
}
