import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import '../models/reminder.dart';

/// Service for native views call.
class ReminderService {
  static const _name = 'ReminderServiceMethodChannel';
  static const _methodChannel = MethodChannel(_name);

  static Future<Reminder?> create() async {
    try {
      final result = await _methodChannel.invokeMethod('create');
      if (result == null) return null;
      final reminder = Reminder.fromJson(Map<String, dynamic>.from(result));
      if (kDebugMode) debugPrint('Created Reminder: ${reminder.propertiesFormated}');
      return reminder;
    } catch (e) {
      if (kDebugMode) debugPrint('Create Reminder error: $e');
      return null;
    }
  }

  static Future<List<Reminder>> getAll() async {
    try {
      final reminders = await _methodChannel.invokeMethod('getAll');
      return Reminder.remindersFromJson(reminders);
    } catch (e) {
      if (kDebugMode) debugPrint('Get All Reminders error: $e');
      return [];
    }
  }
}
