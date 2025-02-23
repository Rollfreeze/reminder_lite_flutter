import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import '../models/reminder.dart';
import '../models/reminder_categories.dart';

/// Service for working with Reminders.
class ReminderService {
  static const _name = 'ReminderServiceMethodChannel';
  static const _methodChannel = MethodChannel(_name);

  static Future<Reminder?> create() async {
    try {
      final result = await _methodChannel.invokeMethod('create');
      if (result == null) return null;
      final reminder = Reminder.fromJson(result);
      if (kDebugMode) debugPrint('Created Reminder: ${reminder.propertiesFormated}');
      return reminder;
    } catch (e) {
      if (kDebugMode) debugPrint('Create Reminder error: $e');
      return null;
    }
  }

  static Future<List<Reminder>> fetchFor(ReminderCategory category) async {
    try {
      final reminders = await _methodChannel.invokeMethod('fetchFor', category.code);
      return Reminder.remindersFromJson(reminders);
    } catch (e) {
      if (kDebugMode) debugPrint('Fetching for $category error: $e');
      return [];
    }
  }
}
