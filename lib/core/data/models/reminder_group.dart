import 'reminder.dart';
import 'reminder_category.dart';

class ReminderGroup {
  final ReminderCategory category;
  final List<Reminder> reminders;
  final int completedAmount;

  const ReminderGroup({
    required this.category,
    required this.reminders,
    required this.completedAmount,
  });
}
