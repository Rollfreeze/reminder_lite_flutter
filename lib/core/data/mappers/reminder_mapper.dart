import 'package:flutter/foundation.dart';
import '../models/reminder.dart';

class ReminderMapper {
  /// Parses a list of reminders from JSON.
  static List<Reminder> fromJsonList(Map<String, dynamic> json) {
    try {
      final reminders = (json['reminders'] as List<dynamic>? ?? <dynamic>[])
          .whereType<Map<String, dynamic>>()
          .map(Reminder.fromJson)
          .toList();

      return reminders;
    } catch (e) {
      debugPrint('Failed to parse reminders: $e');
      return [];
    }
  }
}
