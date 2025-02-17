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
      if (kDebugMode) print('Created Reminder: ${reminder.propertiesFormated}');
      return reminder;
    } catch (e) {
      if (kDebugMode) print('Create Reminder error: $e');
      return null;
    }
  }

  static Future<List<Reminder>> getAll() async {
    try {
      final result = await _methodChannel.invokeMethod('getAll');
      if (kDebugMode) print(result);
      if (result == null) return [];
      final r = Reminder.remindersFromJson(Map<String, dynamic>.from(result));
      return r;
    } catch (e) {
      if (kDebugMode) print('Get All Reminders error: $e');
      return [];
    }
  }
}
