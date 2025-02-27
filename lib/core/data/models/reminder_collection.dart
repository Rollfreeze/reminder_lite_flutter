import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utils/date_time_extension.dart';
import 'reminder.dart';
import 'reminder_category.dart';
import 'reminder_group.dart';

part 'reminder_collection.freezed.dart';

@freezed
class ReminderCollection {
  const ReminderCollection._();

  const factory ReminderCollection({
    required List<ReminderGroup> groups,
  }) = _ReminderCollection;

  factory ReminderCollection.of(List<Reminder> reminders) {
    final today = <Reminder>[];
    int todayCompleted = 0;

    final month = <Reminder>[];
    int monthCompleted = 0;

    final all = <Reminder>[];
    int allCompleted = 0;

    for (final element in reminders) {
      if (element.date?.isToday ?? false) {
        today.add(element);
        todayCompleted++;
      }

      if (element.date?.isCurrentMonth ?? false) {
        month.add(element);
        monthCompleted++;
      }

      all.add(element);
      if (!element.isDone) allCompleted++;
    }

    return ReminderCollection(
      groups: [
        ReminderGroup(
          category: ReminderCategory.today,
          reminders: today,
          completedAmount: todayCompleted,
        ),
        ReminderGroup(
          category: ReminderCategory.month,
          reminders: month,
          completedAmount: monthCompleted,
        ),
        ReminderGroup(
          category: ReminderCategory.all,
          reminders: all,
          completedAmount: allCompleted,
        ),
        ReminderGroup(
          category: ReminderCategory.done,
          reminders: all,
          completedAmount: all.length,
        ),
      ],
    );
  }

  ReminderCollection append(Reminder reminder) {
    final today = <Reminder>[];
    int todayCompleted = 0;

    final month = <Reminder>[];
    int monthCompleted = 0;

    final all = <Reminder>[];
    int allCompleted = 0;

    return ReminderCollection(
      groups: [
        ReminderGroup(
          category: ReminderCategory.today,
          reminders: today,
          completedAmount: todayCompleted,
        ),
        ReminderGroup(
          category: ReminderCategory.month,
          reminders: month,
          completedAmount: monthCompleted,
        ),
        ReminderGroup(
          category: ReminderCategory.all,
          reminders: all,
          completedAmount: allCompleted,
        ),
        ReminderGroup(
          category: ReminderCategory.done,
          reminders: all,
          completedAmount: all.length,
        ),
      ],
    );
  }
}
