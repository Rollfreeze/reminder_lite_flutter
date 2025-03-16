// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utils/date_time_extension.dart';
import 'reminder_category.dart';
import 'repeatance_option.dart';

part 'reminder.freezed.dart';
part 'reminder.g.dart';

@freezed
class Reminder with _$Reminder {
  const Reminder._();

  const factory Reminder({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'notes') required String notes,
    @JsonKey(name: 'is_completed') required bool isCompleted,
    @JsonKey(name: 'repeatance_code') required RepeatanceOption repeatance,
    @DateTimeSerializer() @JsonKey(name: 'due') DateTime? due,
  }) = _Reminder;

  factory Reminder.fromJson(Map<String, dynamic> json) => _$ReminderFromJson(json);

  /// Categorizes reminders based on the given category.
  bool belongsTo(ReminderCategory category) => switch (category) {
        ReminderCategory.today => due?.isToday ?? false,
        ReminderCategory.month => due?.isCurrentMonth ?? false,
        ReminderCategory.all => true,
        ReminderCategory.completed => isCompleted,
      };

  /// Indicates if reminder has a repeatance option.
  bool get isRepetitive => repeatance != RepeatanceOption.never;
}
