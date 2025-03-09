import 'package:flutter/foundation.dart';
import '../models/reminder.dart';

class ReminderMapper {
  /// Parses a list of reminders from JSON.
  static List<Reminder> fromJsonList(Map<String, dynamic> json) {
    try {
      final List<dynamic> reminders = json['reminders'] ?? [];
      return reminders.map((reminder) => Reminder.fromJson(reminder)).toList();
    } catch (e) {
      debugPrint('Failed to parse reminders: $e');
      return [];
    }
  }
}
