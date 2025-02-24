import '../../utils/date_extension.dart';
import 'reminder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorized_reminders.freezed.dart';

@freezed
class CategorizedReminders with _$CategorizedReminders {
  const factory CategorizedReminders({
    required List<Reminder> today,
    required List<Reminder> month,
    required List<Reminder> all,
    required List<Reminder> done,
  }) = _CategorizedReminders;

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
}
