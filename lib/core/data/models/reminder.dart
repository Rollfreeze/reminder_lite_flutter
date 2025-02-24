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
  factory Reminder.fromJson(String json) {
    try {
      final decoded = jsonDecode(json) as Map<String, dynamic>;
      return Reminder(
        id: decoded['id'] ?? '',
        title: decoded['title'] ?? '',
        notes: decoded['notes'] ?? '',
        date: decoded['date'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(
                isUtc: true,
                ((decoded['date'] as double) * 1000).toInt(),
              ),
        repeatance: RepeatanceOption.fromCode(decoded['repeatance_code'] as int),
        isDone: decoded['is_done'] ?? false,
      );
    } catch (e) {
      throw ArgumentError('Failed to parse Reminder: $e');
    }
  }

  /// Creates a List of Reminders from json.
  static List<Reminder> remindersFromJson(String json) {
    try {
      final decoded = jsonDecode(json) as Map<String, dynamic>;
      final List<dynamic> reminders = decoded['reminders'] ?? [];
      return reminders.map((reminder) => Reminder.fromJson(reminder)).toList();
    } catch (e) {
      if (kDebugMode) debugPrint('Failed to parse reminders: $e');
      return [];
    }
  }

  /// A message with all properties of reminder instance.
  String get propertiesFormated =>
      "id: '$id', title: '$title', notes: '$notes', date: '$dateFormated', repeatance_code: '$repeatance', is_done: '$isDone'";

  /// Swift-like date formation.
  String get dateFormated => date == null
      ? ''
      : '${date?.year}-${date?.month}-${date?.day} ${date?.hour}:${date?.minute}:${date?.second} ${date?.timeZoneName}';
}
