import 'package:flutter/foundation.dart';
import '../../utils/date_time_extension.dart';
import 'reminder_category.dart';
import 'repeat_option.dart';

/// A model that represents and contains all about some certain reminder.
class Reminder {
  final String id;
  final String title;
  final String notes;
  final DateTime? date;
  final RepeatanceOption repeatance;
  final bool isDone;

  const Reminder({
    required this.id,
    required this.title,
    required this.notes,
    required this.date,
    required this.repeatance,
    required this.isDone,
  });

  // Factory constructor to create an instance from JSON
  factory Reminder.fromJson(Map<String, dynamic> json) {
    try {
      return Reminder(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        notes: json['notes'] ?? '',
        date: json['date'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(
                isUtc: true,
                ((json['date'] as num) * 1000).toInt(),
              ),
        repeatance: RepeatanceOption.fromCode(json['repeatance_code'] as int),
        isDone: json['is_done'] ?? false,
      );
    } catch (e) {
      throw ArgumentError('Failed to parse Reminder: $e');
    }
  }

  /// Creates a List of Reminders from json.
  static List<Reminder> remindersFromJson(Map<String, dynamic> json) {
    try {
      final List<dynamic> reminders = json['reminders'] ?? [];
      return reminders.map((reminder) => Reminder.fromJson(reminder)).toList();
    } catch (e) {
      if (kDebugMode) debugPrint('Failed to parse reminders: $e');
      return [];
    }
  }

  bool belongsTo(ReminderCategory category) => switch (category) {
        ReminderCategory.today => date?.isToday ?? false,
        ReminderCategory.month => date?.isCurrentMonth ?? false,
        ReminderCategory.all => true,
        ReminderCategory.done => isDone,
      };

  /// A message with all properties of reminder instance.
  String get propertiesFormated =>
      "id: '$id', title: '$title', notes: '$notes', date: '$dateFormated', repeatance_code: '$repeatance', is_done: '$isDone'";

  /// Swift-like date formation.
  String get dateFormated => date == null
      ? ''
      : '${date?.year}-${date?.month}-${date?.day} ${date?.hour}:${date?.minute}:${date?.second} ${date?.timeZoneName}';
}
