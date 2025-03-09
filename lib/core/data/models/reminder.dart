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
        date: json['date'] == null ? null : DateTime.parse(json['date']),
        repeatance: RepeatanceOption.fromCode(json['repeatance_code'] as int),
        isDone: json['is_done'] ?? false,
      );
    } catch (e) {
      throw ArgumentError('Failed to parse Reminder: $e');
    }
  }


  bool belongsTo(ReminderCategory category) => switch (category) {
        ReminderCategory.today => date?.isToday ?? false,
        ReminderCategory.month => date?.isCurrentMonth ?? false,
        ReminderCategory.all => true,
        ReminderCategory.done => isDone,
      };

  bool get isRepetitive => repeatance != RepeatanceOption.never;

  /// A message with all properties of reminder instance.
  String get propertiesFormated => """\n
      id: '$id',
      title: '$title',
      notes: '$notes',
      utc-date: '${date?.toUtc()}',
      local-date: '${date?.toLocal()}',
      repeatance_code: '$repeatance',
      is_done: '$isDone'
    """;
}
