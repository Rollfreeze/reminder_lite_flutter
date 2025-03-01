import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'reminder.dart';
import 'reminder_category.dart';
import 'reminder_group.dart';

part 'reminder_collection.freezed.dart';

@freezed
class ReminderCollection {
  const ReminderCollection._();

  const factory ReminderCollection({required Iterable<ReminderGroup> groups}) = _ReminderCollection;

  factory ReminderCollection.of(List<Reminder> reminders) {
    // Initialize maps for reminders and their completed counts by each category.
    final remindersByCategory = {for (final category in ReminderCategory.values) category: <Reminder>[]};
    final completedByCategory = {for (final category in ReminderCategory.values) category: 0};

    // Distribute reminders into their respective categories
    for (final reminder in reminders) {
      for (final category in ReminderCategory.values.where(reminder.belongsTo)) {
        remindersByCategory[category]!.add(reminder);
        if (reminder.isDone) completedByCategory[category] = completedByCategory[category]! + 1;
      }
    }

    // Convert the collected data into ReminderGroup instances for ReminderCollection.
    return ReminderCollection(
      groups: remindersByCategory.entries.map(
        (entry) => ReminderGroup(
          category: entry.key,
          reminders: entry.value,
          completedAmount: completedByCategory[entry.key]!,
        ),
      ),
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
