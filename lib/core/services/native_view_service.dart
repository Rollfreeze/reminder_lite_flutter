import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:reminder_lite/core/models/reminder.dart';

/// Service for native views call.
class ReminderService {
  static const _name = "ReminderServiceMethodChannel";
  static const _methodChannel = MethodChannel(_name);

  static Future<Reminder?> create() async {
    try {
      final result = await _methodChannel.invokeMethod("create");
      if (result == null) return null;
      final reminder = Reminder.fromJson(Map<String, dynamic>.from(result));
      if (kDebugMode) print("Created Reminder: ${reminder.propertiesFormated}");
      return reminder;
    } catch (e) {
      if (kDebugMode) print('Create Reminder parse Error: $e');
      return null;
    }
  }
}
