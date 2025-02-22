import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'repeat_option.dart';

/// A model that represents and contains all about some certain reminder.
class Reminder {
  final String id;
  final String title;
  final String notes;
  final DateTime? date;
  final RepeatanceOption repeatance;

  const Reminder({
    required this.id,
    required this.title,
    required this.notes,
    required this.date,
    required this.repeatance,
  });

  // Factory constructor to create an instance from JSON
  factory Reminder.fromJson(Map<String, dynamic> json) => Reminder(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        notes: json['notes'] ?? '',
        date: json['date'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(
                isUtc: true,
                ((json['date'] as double) * 1000).toInt(),
              ),
        repeatance: RepeatanceOption.fromCode(json['repeatance_code'] as int),
      );

  /// Creates a List of Reminders from json.
  static List<Reminder> remindersFromJson(String json) {
    try {
      final Map<String, dynamic> decoded = jsonDecode(json) as Map<String, dynamic>;
      final List<dynamic> reminders = decoded['reminders'] ?? [];
      return reminders.map((reminder) => Reminder.fromJson(reminder)).toList();
    } catch (e) {
      if (kDebugMode) debugPrint('Failed to parse reminders: $e');
      return [];
    }
  }

  /// A message with all properties of reminder instance.
  String get propertiesFormated =>
      "id: '$id', title: '$title', notes: '$notes', date: '$dateFormated', repeatance_code: '$repeatance'";

  /// Swift-like date formation.
  String get dateFormated => date == null
      ? ''
      : '${date?.year}-${date?.month}-${date?.day} ${date?.hour}:${date?.minute}:${date?.second} ${date?.timeZoneName}';
}
