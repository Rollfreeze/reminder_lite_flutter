import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'reminder.dart';
import 'reminder_category.dart';
import 'reminder_group.dart';

part 'reminder_collection.freezed.dart';

@freezed
class ReminderCollection with _$ReminderCollection {
  const ReminderCollection._();

  const factory ReminderCollection({required List<ReminderGroup> groups}) = _ReminderCollection;

  factory ReminderCollection.of(List<Reminder> reminders) {
    // Initialize maps for reminders and their completed counts by each category.
    final remindersByCategory = {for (final category in ReminderCategory.values) category: <Reminder>[]};
    final completedByCategory = {for (final category in ReminderCategory.values) category: 0};

    // Distribute reminders into their respective categories.
    for (final reminder in reminders) {
      for (final category in ReminderCategory.values.where(reminder.belongsTo)) {
        remindersByCategory[category]!.add(reminder);
        if (reminder.isCompleted) completedByCategory[category] = completedByCategory[category]! + 1;
      }
    }

    // Convert the collected data into ReminderGroup instances for ReminderCollection.
    return ReminderCollection(
      groups: remindersByCategory.entries
          .map(
            (entry) => ReminderGroup(
              category: entry.key,
              reminders: entry.value,
              completedAmount: completedByCategory[entry.key]!,
            ),
          )
          .toList(),
    );
  }

  ReminderCollection append(Reminder reminder) {
    // Create copies of the existing category mappings.
    final remindersByCategory = {for (final group in groups) group.category: List<Reminder>.from(group.reminders)};
    final completedByCategory = {for (final group in groups) group.category: group.completedAmount};

    // Add the reminder to the appropriate categories.
    for (final category in ReminderCategory.values.where(reminder.belongsTo)) {
      remindersByCategory.putIfAbsent(category, () => <Reminder>[]).add(reminder);
      if (reminder.isCompleted) completedByCategory[category] = completedByCategory[category]! + 1;
    }

    // Generate new ReminderGroups and return a new ReminderCollection instance.
    return ReminderCollection(
      groups: remindersByCategory.entries
          .map(
            (entry) => ReminderGroup(
              category: entry.key,
              reminders: entry.value,
              completedAmount: completedByCategory[entry.key]!,
            ),
          )
          .toList(),
    );
  }

  ReminderCollection update(Reminder updatedReminder) {
    // Create copies of the existing category mappings.
    final remindersByCategory = {for (final group in groups) group.category: List<Reminder>.from(group.reminders)};
    final completedByCategory = {for (final group in groups) group.category: group.completedAmount};

    // Iterate over categories and replace the matching reminder if found.
    for (final category in ReminderCategory.values.where(updatedReminder.belongsTo)) {
      if (remindersByCategory.containsKey(category)) {
        final index = remindersByCategory[category]!.indexWhere((r) => r.id == updatedReminder.id);
        if (index != -1) {
          final isCurrentCompleted = remindersByCategory[category]![index].isCompleted;
          remindersByCategory[category]![index] = updatedReminder;

          // Update completed count.
          if (updatedReminder.isCompleted && !isCurrentCompleted) {
            completedByCategory[category] = completedByCategory[category]! + 1;
          } else if (!updatedReminder.isCompleted && isCurrentCompleted) {
            completedByCategory[category] = completedByCategory[category]! - 1;
          }
        }
      }
    }

    // Generate new ReminderGroups and return a new ReminderCollection instance.
    return ReminderCollection(
      groups: remindersByCategory.entries
          .map(
            (entry) => ReminderGroup(
              category: entry.key,
              reminders: entry.value,
              completedAmount: completedByCategory[entry.key]!,
            ),
          )
          .toList(),
    );
  }

  ReminderGroup getBy(ReminderCategory category) => groups.firstWhere((e) => e.category == category);
}
