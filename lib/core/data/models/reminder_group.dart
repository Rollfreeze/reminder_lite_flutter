import '../../services/localization_service.dart';
import 'reminder.dart';
import 'reminder_category.dart';

class ReminderGroup {
  /// Reminders category of the Group.
  final ReminderCategory category;

  /// Reminders themselves.
  final List<Reminder> reminders;

  /// Amount of completed reminders in the current group.
  final int completedAmount;

  const ReminderGroup({
    required this.category,
    required this.reminders,
    required this.completedAmount,
  });

  /// The Group's reminders' length.
  int get length => reminders.length;

  /// Get the message about how many reminders are completed currently.
  String get progressMessage {
    if (length == 0) return LocalizationService.locale.noReminders.split(' ').join('\n');
    return LocalizationService.locale.completeAmount(completedAmount, length);
  }
}
