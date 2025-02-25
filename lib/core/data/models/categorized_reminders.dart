import '../../utils/date_time_extension.dart';
import 'reminder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorized_reminders.freezed.dart';

@freezed
class CategorizedReminders with _$CategorizedReminders {
  const CategorizedReminders._();

  const factory CategorizedReminders({
    required List<Reminder> today,
    required List<Reminder> month,
    required List<Reminder> all,
    required List<Reminder> done,
  }) = _CategorizedReminders;

  factory CategorizedReminders.empty() => const CategorizedReminders(
        today: [],
        month: [],
        all: [],
        done: [],
      );

  factory CategorizedReminders.from(List<Reminder> reminders) {
    final today = <Reminder>[];
    final month = <Reminder>[];
    final all = <Reminder>[];
    final done = <Reminder>[];

    for (final element in reminders) {
      if (!element.isDone && (element.date?.isToday ?? false)) today.add(element);
      if (!element.isDone && (element.date?.isCurrentMonth ?? false)) month.add(element);
      if (!element.isDone) {
        all.add(element);
      } else {
        done.add(element);
      }
    }

    return CategorizedReminders(today: today, month: month, all: all, done: done);
  }

  CategorizedReminders updateWith(Reminder reminder) {
    final todayCopy = today.toList();
    final monthCopy = month.toList();
    final allCopy = all.toList();
    final doneCopy = done.toList();

    if (!reminder.isDone && (reminder.date?.isToday ?? false)) todayCopy.add(reminder);
    if (!reminder.isDone && (reminder.date?.isCurrentMonth ?? false)) monthCopy.add(reminder);
    if (!reminder.isDone) {
      allCopy.add(reminder);
    } else {
      doneCopy.add(reminder);
    }
    return CategorizedReminders(today: todayCopy, month: monthCopy, all: allCopy, done: doneCopy);
  }
}
